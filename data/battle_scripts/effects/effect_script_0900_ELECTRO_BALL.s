.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_SPEED, BSCRIPT_VAR_CALC_TEMP
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_SPEED, BSCRIPT_VAR_TEMP_DATA
    UpdateVarFromVar OPCODE_DIV, BSCRIPT_VAR_CALC_TEMP, BSCRIPT_VAR_TEMP_DATA
    CompareVarToValue OPCODE_GT, BSCRIPT_VAR_TEMP_DATA, 4, _150bp
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 4, _150bp
    CompareVarToValue OPCODE_GT, BSCRIPT_VAR_TEMP_DATA, 3, _120bp
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 3, _120bp
    CompareVarToValue OPCODE_GT, BSCRIPT_VAR_TEMP_DATA, 2, _80bp
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 2, _80bp
    CompareVarToValue OPCODE_GT, BSCRIPT_VAR_TEMP_DATA, 1, _60bp
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 1, _60bp
_40bp:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_POWER, 40
    GoTo _End

_60bp:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_POWER, 60
    GoTo _End

_80bp:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_POWER, 80
    GoTo _End

_120bp:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_POWER, 120
    GoTo _End

_150bp:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_POWER, 150
_End:
    CalcCrit
    CalcDamage
    End
