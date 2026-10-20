
execute unless score $combat_damage_display true matches 1 run return fail
function ss_lib:fetch/attack_damage {s:"@a[tag=InCombat]",scale:100,bypass_check:false}
function ss_lib:fetch/attack_speed {s:"@a[tag=InCombat]",scale:100,bypass_check:false}
# execute as @a[tag=InCombat] store result score @s AttackDamage run attribute @s attack_damage get 100
# execute as @a[tag=InCombat] store result score @s AttackSpeed run attribute @s attack_speed get 100

execute as @a[tag=InCombat] run scoreboard players operation @s generic_t = @s AttackDamage
    execute as @a[tag=InCombat] run scoreboard players operation @s generic_t *= @s AttackSpeed
    execute as @a[tag=InCombat] run function math:divide/int {score:generic_t,div:10000}

# residuals
execute as @a[tag=InCombat] run scoreboard players operation @s generic_a = @s AttackDamage
execute as @a[tag=InCombat] run scoreboard players operation @s generic_b = @s generic_a
execute as @a[tag=InCombat] run scoreboard players operation @s generic_b %= #const.100 value
execute as @a[tag=InCombat] run function math:divide/int {score:generic_a,div:100}

execute as @a[tag=InCombat] run scoreboard players operation @s generic_s = @s AttackSpeed
execute as @a[tag=InCombat] run scoreboard players operation @s generic_p = @s AttackSpeed
execute as @a[tag=InCombat] run scoreboard players operation @s generic_p %= #const.100 value
execute as @a[tag=InCombat] run function math:divide/int {score:generic_s,div:100}

# combat bar display
execute as @a if score @s pause_actionbars matches 1.. run return fail

execute as @a[tag=InCombat] unless score @s generic_b matches 0..9 unless score @s generic_p matches 0..9 \
    run title @s actionbar \
    ["Attack Damage: ",{"score":{"name":"*","objective":"generic_a"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"*","objective":"generic_b"},"color":"red"}, \
    " / ",{"score":{"name":"*","objective":"generic_s"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"*","objective":"generic_p"},"color":"red"}, \
    " | Proficiency: ",{"score":{"name":"*","objective":"proficiency"},"color":"gold"}]

execute as @a[tag=InCombat] if score @s generic_b matches 0..9 unless score @s generic_p matches 0..9 \
    run title @s actionbar \
    ["Attack Damage: ",{"score":{"name":"*","objective":"generic_a"},"color":"red"},{"text":".0","color":"red"},{"score":{"name":"*","objective":"generic_b"},"color":"red"}, \
    " / ",{"score":{"name":"*","objective":"generic_s"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"*","objective":"generic_p"},"color":"red"}, \
    " | Proficiency: ",{"score":{"name":"*","objective":"proficiency"},"color":"gold"}]

execute as @a[tag=InCombat] if score @s generic_b matches 0..9 if score @s generic_p matches 0..9 \
    run title @s actionbar \
    ["Attack Damage: ",{"score":{"name":"*","objective":"generic_a"},"color":"red"},{"text":".0","color":"red"},{"score":{"name":"*","objective":"generic_b"},"color":"red"}, \
    " / ",{"score":{"name":"*","objective":"generic_s"},"color":"red"},{"text":".0","color":"red"},{"score":{"name":"*","objective":"generic_p"},"color":"red"}, \
    " | Proficiency: ",{"score":{"name":"*","objective":"proficiency"},"color":"gold"}]

execute as @a[tag=InCombat] unless score @s generic_b matches 0..9 if score @s generic_p matches 0..9 \
    run title @s actionbar \
    ["Attack Damage: ",{"score":{"name":"*","objective":"generic_a"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"*","objective":"generic_b"},"color":"red"}, \
    " / ",{"score":{"name":"*","objective":"generic_s"},"color":"red"},{"text":".0","color":"red"},{"score":{"name":"*","objective":"generic_p"},"color":"red"}, \
    " | Proficiency: ",{"score":{"name":"*","objective":"proficiency"},"color":"gold"}]

# execute as @a[tag=InCombat] run scoreboard players set @s pause_actionbars 3

# execute as @a unless predicate ss_lib:is/hiding at @s positioned ~ ~.5 ~ run function sse.dev:aegis_display
# execute as @a unless predicate ss_lib:is/hiding at @s positioned ~ ~.1 ~ run function sse.dev:aegis_display

# execute as @a at @s if dimension eochrin:erdefret run effect give @s blindness 1 0 true

# function sse.dev:arrow_test

# execute as @a[predicate=ss_lib:is/raining] if predicate [{"type":"minecraft:location_check","predicate":{"biomes":"minecraft:desert"}}] run function sse.dev:sandstorm_test