execute as @a run scoreboard players operation @s xp_cap += @s Mind
execute as @a[scores={xp_level=1..}] if score @s xp_level > @s Mind run function ss_lib:fetch/armor {s:"@s"}

execute as @a[scores={xp_level=..9999}] run function parse:simple {score:xp_level,function:"echoes:player/xp_level/random"}
execute as @a[scores={xp_level=10000..}] run function echoes:player/xp_level/random {value:10000}
    execute as @a run scoreboard players operation @s xp_increment /= #const.2 value
    execute as @a run scoreboard players operation @s xp_increment *= @s xp_increment
    # execute as @a[scores={xp_stored=1..}] if score @s xp_increment > @s xp_stored run scoreboard players operation @s xp_increment = @s xp_stored

# levels 20-30
execute as @a[scores={xp_level=22..,Mind=20..30}] run scoreboard players operation @s generic_b = @s xp_cap
    execute as @a[scores={xp_level=22..,Mind=20..30}] run scoreboard players add @s generic_b 1

# level 30+
execute as @a[scores={xp_level=32..,Mind=31..100}] run scoreboard players operation @s xp_cap *= #const.2 value
    execute as @a[scores={xp_level=32..,Mind=31..100}] run scoreboard players remove @s xp_cap 30

# level 50+
execute as @a[scores={Mind=101..}] run scoreboard players operation @s xp_cap *= @s xp_cap
    # scoreboard players set @a[scores={xp_cap=20001..}] xp_cap 20000
    
# copper armor
execute as @a[scores={xp_level=1..,HelmetType=4}] if score @s xp_level > @s Mind run scoreboard players add @s xp_cap 1
execute as @a[scores={xp_level=1..,ChestplateType=4}] if score @s xp_level > @s Mind run scoreboard players add @s xp_cap 2
execute as @a[scores={xp_level=1..,LeggingsType=4}] if score @s xp_level > @s Mind run scoreboard players add @s xp_cap 1
execute as @a[scores={xp_level=1..,BootsType=4}] if score @s xp_level > @s Mind run scoreboard players add @s xp_cap 1

# cap and restore
execute as @a[scores={xp_level=1..}] if score @s xp_level > @s xp_cap run function parse:simple {score:xp_increment,function:"echoes:player/xp_level/cap"}
execute as @a[scores={xp_stored=1..,xp_level=2..,TimeSinceRest=0}] if score @s xp_level < @s xp_cap run function parse:simple {score:xp_increment,function:"echoes:player/xp_level/restore"}
execute as @a[scores={xp_stored=..0,xp_stored_reserve=1..,TimeSinceRest=0}] if score @s xp_level < @s xp_cap run function parse:simple {score:xp_increment,function:"echoes:player/xp_level/restore"}

# stored xp death reset
scoreboard players set @a generic_m 30
    execute as @a run scoreboard players operation @s generic_m += @s xp_cap
execute as @a[scores={TimeSinceDeath=1,generic_m=..99}] run scoreboard players operation @s xp_stored *= @s generic_m
execute as @a[scores={TimeSinceDeath=1,generic_m=..99}] run function math:divide/int {score:xp_stored,div:100}

# stored xp overall cap
scoreboard players set @a[scores={xp_level=50000..}] xp_stored 0