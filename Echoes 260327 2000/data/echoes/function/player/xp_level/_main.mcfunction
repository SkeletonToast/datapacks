execute as @a run scoreboard players operation @s generic_a = @s Mind
execute as @a[scores={xp_level=1..}] if score @s xp_level > @s Mind run function ss_lib:fetch/armor {"s":"@s"}

execute as @a[scores={xp_level=1..}] if score @s xp_level > @s generic_a run function echoes:player/xp_level/cap
execute as @a[scores={xp_stored=1..}] if score @s xp_level < @s generic_a run function echoes:player/xp_level/restore

execute as @a[scores={xp_level=22..,generic_a=20..30}] run scoreboard players operation @s generic_b = @s generic_a
    execute as @a[scores={xp_level=22..,generic_a=20..30}] run scoreboard players add @s generic_b 1

execute as @a[scores={xp_level=32..,generic_a=31..}] run scoreboard players operation @s generic_b = @s generic_a
    execute as @a[scores={xp_level=32..,generic_a=31..}] run scoreboard players remove @s generic_b 30
    execute as @a[scores={xp_level=32..,generic_a=31..}] run scoreboard players operation @s generic_b += @s generic_a
    execute as @a[scores={xp_level=32..,generic_a=31..49}] if score @s xp_level > @s generic_b run function echoes:player/xp_level/cap
    
execute as @a[scores={xp_level=1..,HelmetType=4}] if score @s xp_level > @s Mind run scoreboard players add @s generic_a 1
execute as @a[scores={xp_level=1..,ChestplateType=4}] if score @s xp_level > @s Mind run scoreboard players add @s generic_a 2
execute as @a[scores={xp_level=1..,LeggingsType=4}] if score @s xp_level > @s Mind run scoreboard players add @s generic_a 1
execute as @a[scores={xp_level=1..,BootsType=4}] if score @s xp_level > @s Mind run scoreboard players add @s generic_a 1

# stored xp death reset
scoreboard players add @a generic_a 30
execute as @a[scores={TimeSinceDeath=1,generic_a=..99}] run scoreboard players operation @s xp_stored *= @s Mind
execute as @a[scores={TimeSinceDeath=1,generic_a=..99}] run function round:100_reduce {"score":"xp_stored"}