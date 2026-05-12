function ec_dev:gamerule/_tick

scoreboard players enable @a checkStats
execute as @a[scores={checkStats=1..}] run function rp:check_stats
scoreboard players set @a[scores={checkStats=1..}] checkStats 0
scoreboard players set @a[scores={checkStats=..-1}] checkStats 0

# execute as @a unless predicate ss_lib:is/hiding at @s positioned ~ ~.5 ~ run function ec_dev:aegis_display
# execute as @a unless predicate ss_lib:is/hiding at @s positioned ~ ~.1 ~ run function ec_dev:aegis_display

# execute as @a at @s if dimension eochrin:erdefret run effect give @s blindness 1 0 true

# function ec_dev:arrow_test

# execute as @a[predicate=ss_lib:is/raining] if predicate [{"condition":"minecraft:location_check","predicate":{"biomes":"minecraft:desert"}}] run function ec_dev:sandstorm_test