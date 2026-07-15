$execute as @a[scores={FallFlying=0,aegis_theme=$(color_id)},gamemode=!spectator] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function echoes:player/aegis/display/theme_$(theme) \
    {"display":"@s","dy":"0.9","base_color":"$(base_color)"}
$execute as @a[scores={FallFlying=0,aegis_theme=$(color_id)},gamemode=!spectator] unless predicate ss_lib:is/hiding at @s run function echoes:player/aegis/display/theme_$(theme) \
    {"display":"@a[distance=.1..,scores={aegisVisibility=1}]","dy":"0.9","base_color":"$(base_color)"}