# execute as @a unless score @s aegisSelfVisibility matches 0 run function ss_lib:fetch/fall_flying {"s":"@s","macros":""}
    # fallflying is already fetched every tick

function ss_lib:fetch/absorption {"s":"@a[scores={aegis_theme=0..}]"}
execute as @a unless entity @s[scores={aegis_theme=0..}] run scoreboard players set @s aegis_theme 6
scoreboard players set @a[scores={aegis_theme=16}] aegis_theme 0

execute as @a[scores={aegis_theme=0..15}] run function echoes:player/aegis/display/ichor_display

# execute as @s[scores={aegis_display_level=8,Absorption=0}] run function echoes:particles/aegis_ring_break

# 17 = bubbles
execute as @a[scores={aegis_theme=17,aegisSelfVisibility=1,aegisVisibility=1}] run function echoes:player/aegis/display/theme {dy:0.9,display:"@s",default_particle:bubble,break_particle:bubble_pop}
execute as @a[scores={aegis_theme=17,aegisVisibility=1}] run function echoes:player/aegis/display/theme {dy:0.9,display:"@a[distance=0.1..,scores={aegisVisibility=1}]",default_particle:bubble,break_particle:bubble_pop}
function echoes:player/aegis/display/theme {"color_id":"17","theme":"bubbles","base_color":""}
    
# 18 = pyre
function echoes:player/aegis/display/theme {"color_id":"18","theme":"pyre","base_color":""}
    
# 19 = starlight
function echoes:player/aegis/display/theme {"color_id":"19","theme":"starlight","base_color":""}
    
# 20 = noctis
function echoes:player/aegis/display/theme {"color_id":"20","theme":"noctis","base_color":""}