#
# Autogenerated by Thrift Compiler (0.9.3)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 't_c_l_i_service_types'

PRIMITIVE_TYPES = Set.new([
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
])

COMPLEX_TYPES = Set.new([
    10,
    11,
    12,
    13,
    14,
])

COLLECTION_TYPES = Set.new([
    10,
    11,
])

TYPE_NAMES = {
    0 => %q"BOOLEAN",
    1 => %q"TINYINT",
    2 => %q"SMALLINT",
    3 => %q"INT",
    4 => %q"BIGINT",
    5 => %q"FLOAT",
    6 => %q"DOUBLE",
    7 => %q"STRING",
    8 => %q"TIMESTAMP",
    9 => %q"BINARY",
    10 => %q"ARRAY",
    11 => %q"MAP",
    12 => %q"STRUCT",
    13 => %q"UNIONTYPE",
    15 => %q"DECIMAL",
    16 => %q"NULL",
    17 => %q"DATE",
    18 => %q"VARCHAR",
    19 => %q"CHAR",
    20 => %q"INTERVAL_YEAR_MONTH",
    21 => %q"INTERVAL_DAY_TIME",
    22 => %q"TIMESTAMP WITH LOCAL TIME ZONE",
}

CHARACTER_MAXIMUM_LENGTH = %q"characterMaximumLength"

PRECISION = %q"precision"

SCALE = %q"scale"

