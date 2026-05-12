execute if block ~ ~ ~ #ss_armory:bullet_breakable run scoreboard players add @s raycast_lifetime 8
execute if block ~ ~ ~ #ss_armory:bullet_breakable if predicate {"condition":"random_chance",chance:0.9} run fill ~ ~ ~ ~ ~ ~ air destroy
execute if block ~ ~ ~ #ss_armory:bullet_breakable_dense if predicate {"condition":"random_chance",chance:0.1} run fill ~ ~ ~ ~ ~ ~ air destroy
particle large_smoke ^ ^ ^-0.25 0.1 0.1 0.1 0 5
particle falling_dust{block_state:"minecraft:gravel"} ^ ^ ^-0.25 0.1 0.1 0.1 0 5
playsound minecraft:block.deepslate.break block @a ^ ^ ^-0.25 1 1.2
playsound minecraft:entity.generic.explode player @a ^ ^ ^-0.25 0.1 1.5

# particle explosion_emitter ~ ~ ~
# particle large_smoke ~ ~ ~ 0.5 0.5 0.5 0.01 40
# playsound entity.lightning_bolt.impact
# execute as @e[distance=..5] run damage @s 10 explosion