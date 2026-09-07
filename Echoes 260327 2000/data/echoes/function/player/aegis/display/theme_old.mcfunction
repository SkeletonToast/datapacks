$execute as @a[scores={aegis_theme=$(color_id)},gamemode=!spectator] unless score @s FallFlying matches 1 unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function echoes:player/aegis/display/theme_$(theme) \
    {display:"@s",dy:"0.9",base_color:"$(base_color)"}
$execute as @a[scores={aegis_theme=$(color_id)},gamemode=!spectator] unless predicate ss_lib:is/hiding at @s run function echoes:player/aegis/display/theme_$(theme) \
    {display:"@a[distance=.1..,scores={aegisVisibility=1}]",dy:"0.9",base_color:"$(base_color)"}

# $execute as SkeletonToast if score @s aegis_theme matches $(color_id) if score @s sse.debug matches 1 at @s run function echoes:player/aegis/display/theme_$(theme) \
    {display:"@s",dy:"0.9",base_color:"$(base_color)"}