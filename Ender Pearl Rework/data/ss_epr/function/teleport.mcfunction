execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~
tp @s ^ ^ ^-0.5
function ss_epr:particle
scoreboard players set @s ss_epr.teleport_trail_timer 60
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~

execute if predicate {"condition":"minecraft:random_chance","chance":0.05} at @s run summon endermite