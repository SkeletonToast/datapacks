# gravity - minus 10% per status level
# knockback resistance - minus 0.1 per level
# fall damage mult - minus 10% per level
# safe fall distance + plus 1 block per level
# say lightweight

scoreboard players operation @s generic_a = @s elixir.lightweight.amplifier
scoreboard players add @s generic_a 1
execute as @s[scores={generic_a=1..9}] run function parse:score_unended \
    {function:"elixir:status/lightweight/attributes",score:generic_a}

execute unless score @s generic_a matches 10.. run return fail
attribute @s gravity modifier add elixir.lightweight.gravity -0.95 add_multiplied_total
attribute @s knockback_resistance modifier add elixir.lightweight.knockback_resistance -1 add_value
attribute @s fall_damage_multiplier modifier add elixir.lightweight.fall_damage_multiplier -1 add_multiplied_total
attribute @s safe_fall_distance modifier add elixir.lightweight.safe_fall_distance 10 add_multiplied_total