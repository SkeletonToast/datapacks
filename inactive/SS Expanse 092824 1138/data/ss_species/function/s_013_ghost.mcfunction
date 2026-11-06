scoreboard players set @a[scores={Ghost=1..}] ability001 1
scoreboard players set @a[scores={Ghost=1..}] ability007 1
scoreboard players set @a[scores={Ghost=1..}] ability007-02 0
scoreboard players set @a[scores={Ghost=1..}] trait001 1
execute as @a[scores={Ghost=1..}] unless entity @s[scores={species=014}] run scoreboard players set @s ability023 1
# scoreboard players set @a[scores={species=013}] ability023 1
    # phasing has been disabled, as it's a bit annoying and doesn't really achieve anything the glowing system doesn't already achieve.
execute as @a[scores={Ghost=1..}] run attribute @s minecraft:generic.gravity modifier add ghost_gravity -0.25 add_multiplied_total
execute as @a[scores={species=013}] run attribute @s minecraft:generic.max_health base set 6
effect give @a[scores={species=013}] resistance 1 3 true

effect give @a[scores={Ghost=1..}] minecraft:invisibility 1 0 true
execute as @a at @s unless entity @s[scores={Ghost=1..}] unless entity @s[predicate=ss_library:is_sneaking] as @e[scores={Ghost=1..},distance=..10] unless entity @s[predicate=ss_library:is_sneaking] run effect give @s glowing 1 0 true
execute as @a at @s unless entity @s[scores={Ghost=1..}] unless entity @s[predicate=ss_library:is_sneaking] as @e[scores={Ghost=1..},distance=..10] unless entity @s[predicate=ss_library:is_sneaking] at @s run particle cloud ~ ~ ~
execute as @a[scores={Ghost=1..}] at @s unless entity @s[predicate=ss_library:is_sneaking] as @a[distance=..15] unless entity @s[scores={Ghost=1..}] unless entity @s[predicate=ss_library:is_sneaking] run effect give @s glowing 1 0 true

scoreboard players set @a[scores={DamageTaken=1..}] species013-03 200
scoreboard players remove @a[scores={species013-03=1..}] species013-03 1

execute as @a[scores={Ghost=1..,species013-03=..0,Food=..19}] unless entity @s[scores={species=014}] run effect give @s minecraft:saturation 1 0 true
effect give @a[scores={Ghost=1..,InWater=2}] minecraft:water_breathing 5 0 true
effect give @a[scores={Ghost=1..}] minecraft:fire_resistance 5 0 true
execute as @a[scores={Ghost=1..}] unless entity @a[scores={Ghost=-1},distance=..10] run effect give @s resistance 5 2 true

execute as @a[scores={Ghost=1..,species=0..},tag=!Soulless] run function ss_statuses:disabled
    # THIS WILL NEED TO BE UPDATED IF YOU EVER HAVE GHOST SCORES BELOW 0!!!!

scoreboard players remove @a[scores={PlayerKillsGhost=1..}] PlayerDeaths 1
scoreboard players remove @a[scores={MobKillsGhost=100..}] PlayerDeaths 1
scoreboard players remove @a[scores={PlayerKillsGhost=1..}] PlayerKillsGhost 1
scoreboard players remove @a[scores={MobKillsGhost=100..}] MobKillsGhost 100

scoreboard players set @a[scores={Ghost=1..}] AshRain -1
execute as @a[scores={Ghost=1..}] at @s unless block ~ ~2 ~ water run scoreboard players remove @s AshRainDeath 4

team join Ghosts @a[scores={species=013}]
team leave @a[team=Ghosts,scores={TimeSinceDeath=1}]

tellraw @a[scores={Ghost=0}] [{"text":"You are no longer a ","color":"gray"},"Ghost",{"text":".","color":"gray"}]
scoreboard players remove @a[scores={Ghost=0..}] Ghost 1
execute as @a[scores={species014-00=0}] run scoreboard players set @s species014-03 20

# going through walls
# you can use the same resource as Phasing to go through walls. it will teleport you through 1-block walls, probably only if you're doing something special, so that you don't just tp through walls all over the place.
# more likely, it'll just have a charge-up. it'll also drain a big chunk of resource all at once.
#   - if block ^ ^1.4 ^ air unless block ^ ^0.4 ^ air

# maybe the resource is a scoreboard value? it could be named like ectoplasm or smth
# honestly, phasing really isn't that important anymore, since you're already invisible from long distances.
# a good way to make phasing useful would be to make it put you in spectator mode, though that has its own slew of things to work out.