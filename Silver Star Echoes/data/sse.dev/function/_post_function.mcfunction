execute unless score $combat_damage_display true matches 1 run return fail
execute as @a[tag=InCombat] store result score @s AttackDamage run attribute @s attack_damage get 100
execute as @a[tag=InCombat] store result score @s AttackSpeed run attribute @s attack_speed get 100

execute as @a[tag=InCombat] run scoreboard players operation @s generic_t = @s AttackDamage
    execute as @a[tag=InCombat] run scoreboard players operation @s generic_t *= @s AttackSpeed
    execute as @a[tag=InCombat] run function math:round {score:generic_t,round:100,reduce:true}
    execute as @a[tag=InCombat] run function math:round {score:generic_t,round:100,reduce:true}

# residuals
execute as @a[tag=InCombat] run scoreboard players set @s generic_b 100

execute as @a[tag=InCombat] run scoreboard players operation @s generic_a = @s AttackDamage
execute as @a[tag=InCombat] run scoreboard players operation @s generic_a %= @s generic_b
execute as @a[tag=InCombat] run function math:round {score:AttackDamage,round:100,reduce:true}

execute as @a[tag=InCombat] run scoreboard players operation @s generic_c = @s AttackSpeed
execute as @a[tag=InCombat] run scoreboard players operation @s generic_c %= @s generic_b
execute as @a[tag=InCombat] run function math:round {score:AttackSpeed,round:100,reduce:true}

# combat bar display
execute as @a if score @s pause_actionbars matches 1.. run return fail

execute as @a[tag=InCombat] unless score @s generic_a matches 0..9 unless score @s generic_c matches 0..9 \
    run title @s actionbar \
    ["Attack Damage: ",{"score":{"name":"*","objective":"AttackDamage"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"*","objective":"generic_a"},"color":"red"}, \
    " / ",{"score":{"name":"*","objective":"AttackSpeed"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"*","objective":"generic_c"},"color":"red"}, \
    " | Proficiency: ",{"score":{"name":"*","objective":"proficiency"},"color":"gold"}]

execute as @a[tag=InCombat] if score @s generic_a matches 0..9 unless score @s generic_c matches 0..9 \
    run title @s actionbar \
    ["Attack Damage: ",{"score":{"name":"*","objective":"AttackDamage"},"color":"red"},{"text":".0","color":"red"},{"score":{"name":"*","objective":"generic_a"},"color":"red"}, \
    " / ",{"score":{"name":"*","objective":"AttackSpeed"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"*","objective":"generic_c"},"color":"red"}, \
    " | Proficiency: ",{"score":{"name":"*","objective":"proficiency"},"color":"gold"}]

execute as @a[tag=InCombat] if score @s generic_a matches 0..9 if score @s generic_c matches 0..9 \
    run title @s actionbar \
    ["Attack Damage: ",{"score":{"name":"*","objective":"AttackDamage"},"color":"red"},{"text":".0","color":"red"},{"score":{"name":"*","objective":"generic_a"},"color":"red"}, \
    " / ",{"score":{"name":"*","objective":"AttackSpeed"},"color":"red"},{"text":".0","color":"red"},{"score":{"name":"*","objective":"generic_c"},"color":"red"}, \
    " | Proficiency: ",{"score":{"name":"*","objective":"proficiency"},"color":"gold"}]

execute as @a[tag=InCombat] unless score @s generic_a matches 0..9 if score @s generic_c matches 0..9 \
    run title @s actionbar \
    ["Attack Damage: ",{"score":{"name":"*","objective":"AttackDamage"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"*","objective":"generic_a"},"color":"red"}, \
    " / ",{"score":{"name":"*","objective":"AttackSpeed"},"color":"red"},{"text":".0","color":"red"},{"score":{"name":"*","objective":"generic_c"},"color":"red"}, \
    " | Proficiency: ",{"score":{"name":"*","objective":"proficiency"},"color":"gold"}]

# execute as @a[tag=InCombat] run scoreboard players set @s pause_actionbars 3

# execute as @a unless predicate ss_lib:is/hiding at @s positioned ~ ~.5 ~ run function sse.dev:aegis_display
# execute as @a unless predicate ss_lib:is/hiding at @s positioned ~ ~.1 ~ run function sse.dev:aegis_display

# execute as @a at @s if dimension eochrin:erdefret run effect give @s blindness 1 0 true

# function sse.dev:arrow_test

# execute as @a[predicate=ss_lib:is/raining] if predicate [{"condition":"minecraft:location_check","predicate":{"biomes":"minecraft:desert"}}] run function sse.dev:sandstorm_test