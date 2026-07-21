execute as @a run scoreboard players operation @s xp_cap = @s Mind
execute as @a[scores={xp_level=1..}] if score @s xp_level > @s Mind run function ss_lib:fetch/armor {"s":"@s"}

execute as @a[scores={xp_level=..20000}] run scoreboard players operation @s xp_increment = @s xp_level
execute as @a[scores={xp_level=20001..}] run scoreboard players set @s xp_increment 20000
    execute as @a run scoreboard players operation @s xp_increment *= @s xp_increment
        execute as @a run scoreboard players operation @s xp_increment /= @s 2

# levels 20-30
execute as @a[scores={xp_level=22..,Mind=20..30}] run scoreboard players operation @s generic_b = @s xp_cap
    execute as @a[scores={xp_level=22..,Mind=20..30}] run scoreboard players add @s generic_b 1

# level 30+
execute as @a[scores={xp_level=32..,Mind=31..}] run scoreboard players operation @s generic_b = @s xp_cap
    execute as @a[scores={xp_level=32..,Mind=31..}] run scoreboard players remove @s generic_b 30
    execute as @a[scores={xp_level=32..,Mind=31..}] run scoreboard players operation @s xp_cap += @s generic_b

# level 50+
execute as @a[scores={Mind=51..}] run scoreboard players operation @s xp_cap *= @s xp_cap
    # scoreboard players set @a[scores={xp_cap=20001..}] xp_cap 20000
    
# copper armor
execute as @a[scores={xp_level=1..,HelmetType=4}] if score @s xp_level > @s Mind run scoreboard players add @s xp_cap 1
execute as @a[scores={xp_level=1..,ChestplateType=4}] if score @s xp_level > @s Mind run scoreboard players add @s xp_cap 2
execute as @a[scores={xp_level=1..,LeggingsType=4}] if score @s xp_level > @s Mind run scoreboard players add @s xp_cap 1
execute as @a[scores={xp_level=1..,BootsType=4}] if score @s xp_level > @s Mind run scoreboard players add @s xp_cap 1

# cap and restore
execute as @a[scores={xp_level=1..}] if score @s xp_level > @s xp_cap run function parse:score_unended {"score":"xp_increment","function":"echoes:player/xp_level/cap"}
execute as @a[scores={xp_stored=1..}] if score @s xp_level < @s xp_cap run function parse:score_unended {"score":"xp_increment","function":"echoes:player/xp_level/restore"}

# stored xp death reset
scoreboard players set @a generic_m 30
    execute as @a run scoreboard players operation @s generic_m += @s xp_cap
execute as @a[scores={TimeSinceDeath=1,generic_m=..99}] run scoreboard players operation @s xp_stored *= @s generic_m
execute as @a[scores={TimeSinceDeath=1,generic_m=..99}] run function math:round/100_reduce {"score":"xp_stored"}

# stored xp overall cap
scoreboard players set @a[scores={xp_level=50000..}] xp_stored 0