# clear @a[scores={RestOrRespawn=2}] *[custom_data~{ember_lantern:true}]
# execute as @s[scores={RestOrRespawn=2}] run function echoes:campfires/lanterns/give

scoreboard players remove @s[scores={lantern_cooldown=1..}] lantern_cooldown 1
execute unless score @s lantern_cooldown matches 1.. run scoreboard players set @s lantern_cooldown 0

# failure conditions - ember lantern raycast triggers otherwise
execute if score @s lantern_cooldown matches 1.. run return fail
execute unless entity @s[advancements={echoes:using_clock=true}] run return fail
execute unless items entity @s weapon.* clock[custom_data~{ember_lantern:true}] run return fail
# execute if items entity @s weapon.mainhand clock unless items entity @s weapon.mainhand clock[custom_data={ember_lantern:true}] run return fail

scoreboard players set @s generic_a 60
scoreboard players operation @s generic_a += @s sse.Passion
execute at @s anchored eyes positioned ^ ^ ^0.5 run function parse:simple {score:generic_a,function:"echoes:campfires/lanterns/raycast"}

scoreboard players set @s lantern_cooldown 40
scoreboard players operation @s lantern_cooldown -= @s sse.Passion
scoreboard players set @s[scores={lantern_cooldown=..9}] lantern_cooldown 10
# execute as @e[type=minecraft:interaction,tag=Lantern] at @s if data entity @s interaction on target run effect give @s[scores={Soul=50..}] night_vision 1 0 true