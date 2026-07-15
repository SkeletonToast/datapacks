# execute as @a unless score @s aegisSelfVisibility matches 0 run function ss_lib:fetch/fall_flying {"s":"@s","macros":""}
    # fallflying is already fetched every tick

execute as @a unless entity @s[scores={aegis_base_color=0..}] run scoreboard players set @s aegis_base_color 6
scoreboard players set @a[scores={aegis_base_color=16}] aegis_base_color 0

execute as @a[scores={aegis_base_color=0..15}] run function echoes:player/aegis/display/ichor_display
    
# 17 = bubbles
function echoes:player/aegis/display/theme {"color_id":"17","theme":"bubbles","base_color":""}
    
# 18 = pyre
function echoes:player/aegis/display/theme {"color_id":"18","theme":"pyre","base_color":""}
    
# 19 = starlight
function echoes:player/aegis/display/theme {"color_id":"19","theme":"starlight","base_color":""}
    
# 20 = noctis
function echoes:player/aegis/display/theme {"color_id":"20","theme":"noctis","base_color":""}