attribute @s movement_speed modifier remove elytra_visual_speed
attribute @s[scores={boost_visual_effects=10..}] movement_speed modifier add elytra_visual_speed 1.0 add_multiplied_total
attribute @s[scores={boost_visual_effects=9}] movement_speed modifier add elytra_visual_speed 0.9 add_multiplied_total
attribute @s[scores={boost_visual_effects=8}] movement_speed modifier add elytra_visual_speed 0.8 add_multiplied_total
attribute @s[scores={boost_visual_effects=7}] movement_speed modifier add elytra_visual_speed 0.7 add_multiplied_total
attribute @s[scores={boost_visual_effects=6}] movement_speed modifier add elytra_visual_speed 0.6 add_multiplied_total
attribute @s[scores={boost_visual_effects=5}] movement_speed modifier add elytra_visual_speed 0.5 add_multiplied_total
attribute @s[scores={boost_visual_effects=4}] movement_speed modifier add elytra_visual_speed 0.4 add_multiplied_total
attribute @s[scores={boost_visual_effects=3}] movement_speed modifier add elytra_visual_speed 0.3 add_multiplied_total
attribute @s[scores={boost_visual_effects=2}] movement_speed modifier add elytra_visual_speed 0.2 add_multiplied_total
attribute @s[scores={boost_visual_effects=1}] movement_speed modifier add elytra_visual_speed 0.1 add_multiplied_total

# execute as @s[scores={boost_visual_effects=..9}] run function parse:score_unended \
#     {"score":"elytra_visual_speed","function":"echoes:player/elytra_scaling/boost_visuals_apply"}

scoreboard players remove @s boost_visual_effects 1