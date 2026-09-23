$attribute @s[scores={encumbered_amount=25..69}] minecraft:jump_strength modifier add encumbered_jump_strength -$(multiplier) add_multiplied_total
execute as @s[scores={encumbered_amount=70..}] run function ss_lib:status/immobilized_jump
$attribute @s minecraft:movement_speed modifier add encumbered_movement_speed -$(multiplier) add_multiplied_total

scoreboard players set @s encumbered_active 1