# manually enable/disable
execute if entity @s[scores={combatJumpScaling=0..}] store result storage gamerule_variant_monsters toggle int 1 run scoreboard players get @s combatJumpScaling

# if toggled
execute if entity @s[scores={combatJumpScaling=0..}] run return fail
execute store result score @s combatJumpScaling run data get storage gamerule_variant_monsters toggle
scoreboard players add @s combatJumpScaling 1
scoreboard players set @s[scores={combatJumpScaling=2..}] combatJumpScaling 0
execute store result storage gamerule_variant_monsters toggle int 1 run scoreboard players get @s combatJumpScaling

# setting phantom player
execute store result score $sse.gamerule.combat_jump_scaling true run data get storage gamerule_variant_monsters toggle