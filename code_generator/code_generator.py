import re
import sys
import os
import math

MEMBER_REGEX_GROUP_TYPE = 0
MEMBER_REGEX_GROUP_NAME = 1
MEMBER_REGEX_GROUP_SIZE = 2

DATA_TYPE_BYTES = 0
DATA_TYPE_SM_TYPE = 1
DATA_TYPE_ARR_DIMS = 2

DATA_TYPES = {
    'byte' : (1, 'int', []),
    'char' : (1, 'char', []),
    'short' : (2, 'int', []),
    'float16' : (2, 'float', []),
    'int' : (4, 'int', []),
    'int32' : (4, 'int', []),
    'float' : (4, 'float', []),
    'Vector2D' : (8, 'float', [2]),
    'Vector' : (12, 'float', [3]),
    'QAngle' : (12, 'float', [3]),
    'RadianEuler' : (12, 'float', [3]),
    'Quaternion' : (16, 'float', [4]),
    'matrix3x4_t' : (48, 'float', [3, 4])
}

def get_int(st, default = 0):
    num = default
    try:
        num = int(st)
    except: pass

    return num

class StructAnalayzer:
    def __init__(self):
        self.name = ''
        self.folder = ''
        self.members = []
        self.struct_size = 0

    def load_from_file(self, file_path):
        try:
            self.folder = os.path.split(os.path.abspath(file_path))[0]
            return self.__parse(open(file_path).read())
        except Exception as e:
            return print(e)

    def __parse(self, st):
        # Search for struct names.
        name_matches = re.findall('^struct\s+(?:(?:\w+) )*(\w+)', st, re.RegexFlag.M)
        
        # Get the number of matches for the name. (check if not found or too many)
        num_name_matches = len(name_matches)

        # Stop if the name wasn't found.
        if num_name_matches == 0:
            raise Exception('Couldn\'t find struct name')

        # Stop if there is more than 1 struct. (this will lead to incorrect size and members..)
        if num_name_matches > 1:
            raise Exception('Input has more than 1 struct')

        # Save name.
        self.name = name_matches[0]

        # Find all members with Regex.
        self.members = re.findall('^\s+(?:(?:\w+) )?(\w+)\s+(\w+)(?:\[(\d+)\])?;', st, re.RegexFlag.M)

        if len(self.members) == 0:
            raise Exception('No members found in the struct')

        return True

    def export(self, sourcepawn_file = None, gamedata_file = None):
        output_folder = f'{self.folder}\\{self.name}'
        if not os.path.exists(output_folder):
            try:
                os.mkdir(output_folder)
            except:
                print(f'Couldn\'t create output folder for {self.name}!')
                return

        self.__export_sourcepawn(sourcepawn_file)
        self.__export_gamedata(gamedata_file)

    def __export_sourcepawn(self, file_name):
        # struct variables, methodmap and gamedata loading.
        variables, methodmap, gamedata_loading, test = '', '', '', ''

        for member in self.members:
            data_type = DATA_TYPES.get(member[MEMBER_REGEX_GROUP_TYPE], ())

            # Check if the data type was found, if not, don't add it to files.
            if data_type == ():
                print(f"Type '{member[MEMBER_REGEX_GROUP_TYPE]}' not found!")
                continue

            # Get the name of the member with the name of the struct.
            member_name_with_struct = f'{self.name}::{member[MEMBER_REGEX_GROUP_NAME]}'

            # SP offset variable name.
            enum_struct_name = f'this.{member[MEMBER_REGEX_GROUP_NAME]}'
            global_name = f'g_Offsets.{self.name}.{member[MEMBER_REGEX_GROUP_NAME]}'

            # Add sp varaible.
            variables += f'\tAddress {member[MEMBER_REGEX_GROUP_NAME]};\n'

            # Format Gamedata loading for the member
            gamedata_loading += \
f"""
\t\t// [offset] {member_name_with_struct}
\t\tif (({enum_struct_name} = view_as<Address>(gamedata.GetOffset("{member_name_with_struct}"))) == INVALID_ADDRESS_OFFSET)
\t\t{{
\t\t    SetFailState("Failed to get '{member_name_with_struct}' offset.");
\t\t}}
"""
            # Check if member is an array.
            array_size = get_int(member[MEMBER_REGEX_GROUP_SIZE], 1)

            # Check if array or we need to load it as an array.
            if array_size > 1 or data_type[DATA_TYPE_BYTES] > 4:
                # Array or data > 4 bytes.
                dims_str = (f'[{array_size}]' if array_size > 1 else '') + ''.join([f'[{dim_size}]' for dim_size in data_type[DATA_TYPE_ARR_DIMS]])
                
                methodmap += \
f"""
\tpublic void get_{member[MEMBER_REGEX_GROUP_NAME]}({data_type[DATA_TYPE_SM_TYPE]} {member[MEMBER_REGEX_GROUP_NAME]}{dims_str})
\t{{
\t\tthis.Validate();
\t\t
\t\tLoadArrayFromAddress(view_as<Address>(this) + {global_name}, {member[MEMBER_REGEX_GROUP_NAME]}, sizeof({member[MEMBER_REGEX_GROUP_NAME]}));
\t}}
"""
                num_dims = array_size * math.prod(data_type[DATA_TYPE_ARR_DIMS])
                print_format_str = ''.join([f'%{data_type[DATA_TYPE_SM_TYPE][0]} ' * num_dims])
                variables_dims = ', '.join([f'{member[MEMBER_REGEX_GROUP_NAME]}[{dim}]' for dim in range(num_dims)])
                test += \
f"""
{data_type[DATA_TYPE_SM_TYPE]} {member[MEMBER_REGEX_GROUP_NAME]}{dims_str};
studio_hdr.get_{member[MEMBER_REGEX_GROUP_NAME]}({member[MEMBER_REGEX_GROUP_NAME]});
PrintToServer(\"{member[MEMBER_REGEX_GROUP_NAME]}: {print_format_str}\", {variables_dims});
"""
            elif data_type[DATA_TYPE_BYTES] != -1:
                # Not Array
                methodmap += \
f"""
\tproperty {data_type[DATA_TYPE_SM_TYPE]} {member[MEMBER_REGEX_GROUP_NAME]}
\t{{
\t\tpublic get()
\t\t{{
\t\t\tthis.Validate();
\t\t\t
\t\t\t// 'this' [base] + '{member[MEMBER_REGEX_GROUP_NAME]}' [offset]
\t\t\treturn LoadFromAddress(view_as<Address>(this) + {global_name}, NumberType_Int{data_type[DATA_TYPE_BYTES] * 8});
\t\t}}
\t}}
"""
                test += \
f"""
PrintToServer(\"{member[MEMBER_REGEX_GROUP_NAME]}: %{data_type[DATA_TYPE_SM_TYPE][0]}\", studio_hdr.{member[MEMBER_REGEX_GROUP_NAME]});
"""

        # Add everything together.
        output = \
f"""\
enum struct {self.name}
{{
\tint size;
{variables}
\tvoid LoadOffsets(GameData gamedata)
\t{{\
{gamedata_loading}
\t\t// [sizeof] {self.name}
\t\tif ((this.size = gamedata.GetOffset("sizeof::{self.name}")) == -1)
\t\t{{
\t\t    SetFailState("Failed to get '{self.name}' sizeof.");
\t\t}}
\t}}
}}
// {self.name} {self.name};

// {self.name} methodmap
{{
\tpublic (Address base, Address offset, int index)
\t{{
\t\treturn view_as<>(
\t\t\tbase +
\t\t\tLoadFromAddress(base + offset, NumberType_Int32) +
\t\t\tview_as<Address>(g_Offsets.{self.name}.size * index)
\t\t);
\t}}
{methodmap}
}}

// test
{test}
"""
        file_name = f'{self.name}.sp' if file_name is None else file_name
        with open(f'{self.folder}/{self.name}/{file_name}/', 'w') as text_file:
            text_file.write(output)

    def __export_gamedata(self, file_name):
        output = '"Offsets"\n{\n'
        
        for member in self.members:
            
            data_type = DATA_TYPES.get(member[MEMBER_REGEX_GROUP_TYPE], ())

            if data_type == ():
                output += f'\t// {member[MEMBER_REGEX_GROUP_TYPE]}|{member[MEMBER_REGEX_GROUP_NAME]}|{member[MEMBER_REGEX_GROUP_SIZE]}\n\n'
                continue

            # Get the name of the member with the name of the struct.
            member_name_with_struct = f'{self.name}::{member[MEMBER_REGEX_GROUP_NAME]}'

            output += \
f"""\
\t"{member_name_with_struct}"
\t{{
\t\t"windows"\t"{self.struct_size}"
\t\t"linux"\t"{self.struct_size}"
\t}}\n
"""
            self.struct_size += get_int(member[MEMBER_REGEX_GROUP_SIZE], 1) * data_type[DATA_TYPE_BYTES]

        output += \
f"""\
\t"sizeof::{self.name}"
\t{{
\t\t"windows"\t"{self.struct_size}"
\t\t"linux"\t"{self.struct_size}"
\t}}
}}\
"""
        file_name = 'gamedata.txt' if file_name is None else file_name
        with open(f'{self.folder}/{self.name}/{file_name}/', 'w') as text_file:
            text_file.write(output)


#struct.load_from_file('d:\\Programming\\SourcePawn\\Plugins\\GitHub Repositories\\My Repositories\\StudioHdr\\code_generator\\mstudiobbox_t.txt')
for file in sys.argv[1:]:
    try:
        struct = StructAnalayzer()
        struct.load_from_file(file)
        #struct.load_from_file('d:\\Programming\\SourcePawn\\Plugins\\GitHub Repositories\\My Repositories\\StudioHdr\\code_generator\\studiohdr_t.txt')
        struct.export()
    except IndexError:
        print(f'no file argument sent or runtime error for {file}')