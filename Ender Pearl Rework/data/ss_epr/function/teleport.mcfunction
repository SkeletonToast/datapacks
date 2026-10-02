execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~
tp @s ^ ^ ^-0.5
function ss_epr:collision
function ss_epr:particle
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~
scoreboard players set @s ss_epr.teleport_trail_timer 60
attribute @s minecraft:gravity modifier add ss_epr.gravity -1.1 add_multiplied_total
scoreboard players set @s ss_epr.gravity_timer 3

execute if predicate {"type":"minecraft:random_chance","chance":0.05} at @s run summon endermite