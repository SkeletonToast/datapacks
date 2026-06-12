# execute as @a unless score @s aegisSelfVisibility matches 0 run function ss_lib:fetch/fall_flying {"s":"@s"}
    # fallflying is already fetched every tick

execute as @a unless entity @s[scores={aegis_base_color=0..}] run scoreboard players set @s aegis_base_color 6
scoreboard players set @a[scores={aegis_base_color=16..}] aegis_base_color 0

# default / 6 = gold
execute as @a[scores={FallFlying=0,aegis_base_color=6}] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function ec_dev:aegis_display \
    {"base_color":"1,.67,0","display":"@s","vertical":"0.9"}
execute as @a[scores={FallFlying=0,aegis_base_color=6}] unless predicate ss_lib:is/hiding at @s run function ec_dev:aegis_display \
    {"base_color":"1,.67,0","display":"@a[distance=.1..]","vertical":"0.9"}

# 0 = black
execute as @a[scores={FallFlying=0,aegis_base_color=0}] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function ec_dev:aegis_display \
    {"base_color":"0,0,0","display":"@s","vertical":"0.9"}
execute as @a[scores={FallFlying=0,aegis_base_color=0}] unless predicate ss_lib:is/hiding at @s run function ec_dev:aegis_display \
    {"base_color":"0,0,0","display":"@a[distance=.1..]","vertical":"0.9"}

# 1 = dark_blue
execute as @a[scores={FallFlying=0,aegis_base_color=1}] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function ec_dev:aegis_display \
    {"base_color":"0,0,.67","display":"@s","vertical":"0.9"}
execute as @a[scores={FallFlying=0,aegis_base_color=1}] unless predicate ss_lib:is/hiding at @s run function ec_dev:aegis_display \
    {"base_color":"0,0,.67","display":"@a[distance=.1..]","vertical":"0.9"}

# 2 = dark_green
execute as @a[scores={FallFlying=0,aegis_base_color=2}] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function ec_dev:aegis_display \
    {"base_color":"0,.67,0","display":"@s","vertical":"0.9"}
execute as @a[scores={FallFlying=0,aegis_base_color=2}] unless predicate ss_lib:is/hiding at @s run function ec_dev:aegis_display \
    {"base_color":"0,.67,0","display":"@a[distance=.1..]","vertical":"0.9"}

# 3 = dark_aqua
execute as @a[scores={FallFlying=0,aegis_base_color=3}] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function ec_dev:aegis_display \
    {"base_color":"0,.67,.67","display":"@s","vertical":"0.9"}
execute as @a[scores={FallFlying=0,aegis_base_color=3}] unless predicate ss_lib:is/hiding at @s run function ec_dev:aegis_display \
    {"base_color":"0,.67,.67","display":"@a[distance=.1..]","vertical":"0.9"}

# 4 = dark_red
execute as @a[scores={FallFlying=0,aegis_base_color=4}] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function ec_dev:aegis_display \
    {"base_color":".67,0,0","display":"@s","vertical":"0.9"}
execute as @a[scores={FallFlying=0,aegis_base_color=4}] unless predicate ss_lib:is/hiding at @s run function ec_dev:aegis_display \
    {"base_color":".67,0,0","display":"@a[distance=.1..]","vertical":"0.9"}

# 5 = dark_purple
execute as @a[scores={FallFlying=0,aegis_base_color=5}] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function ec_dev:aegis_display \
    {"base_color":".67,0,.67","display":"@s","vertical":"0.9"}
execute as @a[scores={FallFlying=0,aegis_base_color=5}] unless predicate ss_lib:is/hiding at @s run function ec_dev:aegis_display \
    {"base_color":".67,0,.67","display":"@a[distance=.1..]","vertical":"0.9"}

# 7 = gray
execute as @a[scores={FallFlying=0,aegis_base_color=7}] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function ec_dev:aegis_display \
    {"base_color":".67,.67,.67","display":"@s","vertical":"0.9"}
execute as @a[scores={FallFlying=0,aegis_base_color=7}] unless predicate ss_lib:is/hiding at @s run function ec_dev:aegis_display \
    {"base_color":".67,.67,.67","display":"@a[distance=.1..]","vertical":"0.9"}

# 8 = dark_gray
execute as @a[scores={FallFlying=0,aegis_base_color=8}] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function ec_dev:aegis_display \
    {"base_color":".33,.33,.33","display":"@s","vertical":"0.9"}
execute as @a[scores={FallFlying=0,aegis_base_color=8}] unless predicate ss_lib:is/hiding at @s run function ec_dev:aegis_display \
    {"base_color":".33,.33,.33","display":"@a[distance=.1..]","vertical":"0.9"}

# 9 = blue
execute as @a[scores={FallFlying=0,aegis_base_color=9}] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function ec_dev:aegis_display \
    {"base_color":".33,.33,1","display":"@s","vertical":"0.9"}
execute as @a[scores={FallFlying=0,aegis_base_color=9}] unless predicate ss_lib:is/hiding at @s run function ec_dev:aegis_display \
    {"base_color":".33,.33,1","display":"@a[distance=.1..]","vertical":"0.9"}

# 10 = green
execute as @a[scores={FallFlying=0,aegis_base_color=10}] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function ec_dev:aegis_display \
    {"base_color":".33,1,.33","display":"@s","vertical":"0.9"}
execute as @a[scores={FallFlying=0,aegis_base_color=10}] unless predicate ss_lib:is/hiding at @s run function ec_dev:aegis_display \
    {"base_color":".33,1,.33","display":"@a[distance=.1..]","vertical":"0.9"}

# 11 = aqua
execute as @a[scores={FallFlying=0,aegis_base_color=11}] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function ec_dev:aegis_display \
    {"base_color":".33,1,1","display":"@s","vertical":"0.9"}
execute as @a[scores={FallFlying=0,aegis_base_color=11}] unless predicate ss_lib:is/hiding at @s run function ec_dev:aegis_display \
    {"base_color":".33,1,1","display":"@a[distance=.1..]","vertical":"0.9"}

# 12 = red
execute as @a[scores={FallFlying=0,aegis_base_color=12}] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function ec_dev:aegis_display \
    {"base_color":"1,.33,.33","display":"@s","vertical":"0.9"}
execute as @a[scores={FallFlying=0,aegis_base_color=12}] unless predicate ss_lib:is/hiding at @s run function ec_dev:aegis_display \
    {"base_color":"1,.33,.33","display":"@a[distance=.1..]","vertical":"0.9"}

# 13 = light_purple
execute as @a[scores={FallFlying=0,aegis_base_color=13}] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function ec_dev:aegis_display \
    {"base_color":"1,.33,1","display":"@s","vertical":"0.9"}
execute as @a[scores={FallFlying=0,aegis_base_color=13}] unless predicate ss_lib:is/hiding at @s run function ec_dev:aegis_display \
    {"base_color":"1,.33,1","display":"@a[distance=.1..]","vertical":"0.9"}

# 14 = yellow
execute as @a[scores={FallFlying=0,aegis_base_color=14}] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function ec_dev:aegis_display \
    {"base_color":"1,1,.33","display":"@s","vertical":"0.9"}
execute as @a[scores={FallFlying=0,aegis_base_color=14}] unless predicate ss_lib:is/hiding at @s run function ec_dev:aegis_display \
    {"base_color":"1,1,.33","display":"@a[distance=.1..]","vertical":"0.9"}

# 15 = white
execute as @a[scores={FallFlying=0,aegis_base_color=15}] unless predicate ss_lib:is/hiding unless score @s aegisSelfVisibility matches 0 at @s run function ec_dev:aegis_display \
    {"base_color":"1,1,1","display":"@s","vertical":"0.9"}
execute as @a[scores={FallFlying=0,aegis_base_color=15}] unless predicate ss_lib:is/hiding at @s run function ec_dev:aegis_display \
    {"base_color":"1,1,1","display":"@a[distance=.1..]","vertical":"0.9"}