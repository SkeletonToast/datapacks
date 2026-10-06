# execute as @a unless score @s sse.settings.aegis_self_visibility matches 0 run function ss_lib:fetch/fall_flying {s:"@s","macros":""}
    # fallflying is already fetched every tick

tag @a[gamemode=spectator] add aegis_ineligible
tag @a[predicate=ss_lib:is/hiding] add aegis_ineligible
function ss_lib:fetch/absorption {s:"@a[scores={aegis_theme=0..},tag=!aegis_ineligible]",bypass_check:false}
execute as @a unless entity @s[scores={aegis_theme=0..}] run scoreboard players set @s aegis_theme 6
scoreboard players set @a[scores={aegis_theme=16}] aegis_theme 0

execute as @a[scores={aegis_theme=0..15},tag=!aegis_ineligible] run function echoes:player/aegis/display/ichor

# execute as @s[scores={aegis_display_level=8,Absorption=0},tag=!aegis_ineligible] run function echoes:particles/aegis_ring_break

# 17 = bubbles
execute as @a[scores={aegis_theme=17,sse.settings.aegis_self_visibility=1,sse.settings.aegis_visibility=1},tag=!aegis_ineligible] run function echoes:player/aegis/display/theme {dy:0.2,display:"@s",default_particle:bubble,break_particle:bubble_pop}
execute as @a[scores={aegis_theme=17,sse.settings.aegis_visibility=1},tag=!aegis_ineligible] run function echoes:player/aegis/display/theme {dy:0.2,display:"@a[distance=0.1..,scores={sse.settings.aegis_visibility=1}]",default_particle:bubble,break_particle:bubble_pop}

# 18 = pyre
execute as @a[scores={aegis_theme=18,sse.settings.aegis_self_visibility=1,sse.settings.aegis_visibility=1},tag=!aegis_ineligible] run function echoes:player/aegis/display/theme {dy:0.2,display:"@s",default_particle:small_flame,break_particle:smoke}
execute as @a[scores={aegis_theme=18,sse.settings.aegis_visibility=1},tag=!aegis_ineligible] run function echoes:player/aegis/display/theme {dy:0.2,display:"@a[distance=0.1..,scores={sse.settings.aegis_visibility=1}]",default_particle:small_flame,break_particle:smoke}

# 19 = starlight
execute as @a[scores={aegis_theme=19,sse.settings.aegis_self_visibility=1,sse.settings.aegis_visibility=1},tag=!aegis_ineligible] run function echoes:player/aegis/display/theme {dy:0.2,display:"@s",default_particle:electric_spark,break_particle:glow}
execute as @a[scores={aegis_theme=19,sse.settings.aegis_visibility=1},tag=!aegis_ineligible] run function echoes:player/aegis/display/theme {dy:0.2,display:"@a[distance=0.1..,scores={sse.settings.aegis_visibility=1}]",default_particle:electric_spark,break_particle:glow}

# 20 = noctis
execute as @a[scores={aegis_theme=20,sse.settings.aegis_self_visibility=1,sse.settings.aegis_visibility=1},tag=!aegis_ineligible] run function echoes:player/aegis/display/theme {dy:0.2,display:"@s",default_particle:sculk_soul,break_particle:soul_fire_flame}
execute as @a[scores={aegis_theme=20,sse.settings.aegis_visibility=1},tag=!aegis_ineligible] run function echoes:player/aegis/display/theme {dy:0.2,display:"@a[distance=0.1..,scores={sse.settings.aegis_visibility=1}]",default_particle:sculk_soul,break_particle:soul_fire_flame}
tag @a[tag=aegis_ineligible] remove aegis_ineligible