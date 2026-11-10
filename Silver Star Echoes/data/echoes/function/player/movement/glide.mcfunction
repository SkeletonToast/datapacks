execute as @a run attribute @s minecraft:gravity modifier remove echoes:glide.gravity
execute as @a run attribute @s minecraft:fall_damage_multiplier modifier remove echoes:glide.fall_damage_multiplier

execute as @a[scores={OnGround=0},predicate=!ss_lib:input/jump] run scoreboard players set @s GlideEligible 1
execute as @a[scores={OnGround=1}] run scoreboard players set @s GlideEligible 0
execute as @a[scores={FallFlying=1}] run scoreboard players set @s GlideEligible 0

# execute as @a[predicate=ss_lib:input/jump] unless score @s GlideTime matches 71.. run scoreboard players set @s GlideTime 70
# execute as @a[predicate=ss_lib:input/jump] unless score @s GlideTime matches 90.. run scoreboard players add @s GlideTime 1
scoreboard players set @a[predicate=ss_lib:input/jump,scores={GlideEligible=1}] GlideTime 120
execute as @a[predicate=!ss_lib:is/falling,scores={GlideTime=1..}] run scoreboard players set @s GlideTime 90

execute as @a[predicate=!ss_lib:input/jump] run scoreboard players set @s GlideTime 0
execute as @a[predicate=!ss_lib:is/descending] run scoreboard players set @s GlideTime 0
execute as @a[scores={GlideEligible=0}] run scoreboard players set @s GlideTime 0

execute as @a[scores={GlideTime=1..}] run function parse:decimal {score:GlideTime,function:"echoes:player/movement/glide_gravity_apply",scale:-0.01}