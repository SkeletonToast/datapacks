execute as @s[scores={LongbowCharge=80..,UsingBow=0}] at @s as @e[type=#minecraft:arrows,distance=..5] at @s on origin if entity @s[scores={LongbowCharge=80..,UsingBow=0}] as @n[type=#minecraft:arrows,distance=0] run \
    tag @s add LongbowStage3
execute as @s[scores={LongbowCharge=60..,UsingBow=0}] at @s as @e[type=#minecraft:arrows,distance=..5] at @s on origin if entity @s[scores={LongbowCharge=60..,UsingBow=0}] as @n[type=#minecraft:arrows,distance=0] run \
    tag @s add LongbowStage2
execute as @s[scores={LongbowCharge=40..,UsingBow=0}] at @s as @e[type=#minecraft:arrows,distance=..5] at @s on origin if entity @s[scores={LongbowCharge=40..,UsingBow=0}] as @n[type=#minecraft:arrows,distance=0] run \
    tag @s add LongbowStage1

execute as @s[scores={LongbowCharge=40}] at @s anchored eyes run particle small_gust ^ ^ ^2 0 0 0 0 1 normal @s
execute as @s[scores={LongbowCharge=60}] at @s anchored eyes run particle small_gust ^ ^ ^2 0 0 0 0 1 normal @s
execute as @s[scores={LongbowCharge=80}] at @s anchored eyes run particle gust ^ ^ ^2 0 0 0 0 1 normal @s

execute as @e[type=minecraft:arrow] run attribute @s gravity base set 0
execute as @e[type=#minecraft:arrows,tag=LongbowStage3] run attribute @s gravity modifier add longbow_arrow_gravity -0.9 add_multiplied_base
execute as @e[type=#minecraft:arrows,tag=LongbowStage2] run attribute @s gravity modifier add longbow_arrow_gravity -0.7 add_multiplied_base
execute as @e[type=#minecraft:arrows,tag=LongbowStage1] run attribute @s gravity modifier add longbow_arrow_gravity -0.5 add_multiplied_base

execute at @e[type=#minecraft:arrows,tag=LongbowStage1,nbt={inGround:0b}] run particle small_gust ~ ~ ~

scoreboard players operation @s LongbowCharge = @s UsingBow