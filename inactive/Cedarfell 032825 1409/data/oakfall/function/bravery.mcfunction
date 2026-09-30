# near campfire
execute as @a at @s if entity @e[type=interaction,tag=Campfire,distance=..10] run scoreboard players add @s of_bravery 5
scoreboard players add @a[tag=NearCampfire] of_bravery 5

# in boat holding campfire
execute as @a at @s on vehicle if entity @s[type=#minecraft:boat] as @p[distance=0] if items entity @s weapon.mainhand #oakfall:campfires run scoreboard players add @s of_bravery 2

# well lit areas
scoreboard players add @a[scores={DayTime=13000..23000},predicate=oakfall:high_light] of_bravery 2

# with other players
execute as @a at @s run scoreboard players add @a[distance=0.1..10,scores={of_bravery=..1000}] of_bravery 2

# score adj
execute as @a[scores={DamageTaken=1..,of_bravery=1..}] run scoreboard players operation @s of_bravery -= @s DamageTaken
execute as @a if score @s of_bravery > @s of_bravery_max run scoreboard players operation @s of_bravery = @s of_bravery_max
scoreboard players set @a[scores={of_bravery=..-1}] of_bravery 0

# death reset
execute as @a[scores={TimeSinceDeath=1}] run scoreboard players operation @s of_bravery = @s of_bravery_max

# score reset
scoreboard players set @a of_bravery_max 100
execute as @a run scoreboard players operation @s of_bravery_max *= @s Spirit
scoreboard players add @a[scores={of_fear=..1000}] of_bravery_max 500
# execute as @a[scores={of_fear=0}] run scoreboard players operation @s of_bravery_max /= @s 2
#     execute as @a[scores={of_fear=0}] run scoreboard players operation @s of_bravery_max /= @s 2

scoreboard players remove @a[scores={of_bravery=1..}] of_bravery 1