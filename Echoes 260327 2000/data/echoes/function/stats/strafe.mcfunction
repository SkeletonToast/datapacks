scoreboard players add @s StrafeTime 0

scoreboard players set @s[scores={StrafeTime=0},predicate=ss_lib:input/sprint] StrafeTime 1

execute as @s[scores={StrafeTime=1..}] unless predicate echoes:strafing run scoreboard players set @s StrafeTime 0
scoreboard players add @s[scores={StrafeTime=1..}] StrafeTime 1

# encumbrance check bc i laid this out weird
execute if entity @s[scores={encumbrance_unadjusted=30..,StrafeTime=1..}] run title @s actionbar {"text":"!! You are too encumbered to Strafe. !!","color":"red"}
scoreboard players set @s[scores={encumbrance_unadjusted=30..,StrafeTime=1..}] StrafeTime 0

scoreboard players add @s[scores={StrafeTime=1..,SprintTime=0}] generic_attribute 2