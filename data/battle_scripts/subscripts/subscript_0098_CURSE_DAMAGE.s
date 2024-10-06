.include "asm/include/battle_commands.inc"

.data

_000:
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_MSG_TEMP, ABILITY_MAGIC_GUARD, _033
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_CURSE
    Wait 
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_MAXHP, BSCRIPT_VAR_HP_CALC
    DivideVarByValue BSCRIPT_VAR_HP_CALC, 4
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_HP_CALC, -1
    // {0} is afflicted by the curse!
    PrintMessage 424, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    GoToSubscript BATTLE_SUBSCRIPT_UPDATE_HP
    Call BATTLE_SUBSCRIPT_SWITCH_IN_ABILITY_CHECK

_033:
    End 
