scoreboard players set @s CharacterSpecies 7

scoreboard players set @s[scores={species=007,chr-003=1..}] ability012 1
effect give @s[scores={species=007,chr-003=1..}] haste 15 0 true
effect give @s[scores={species=007,chr-003=1..}] resistance 15 0 true
effect give @s[scores={species=007,chr-003=1..}] speed 15 1 true
effect give @s[scores={species=007,chr-003=1..}] regeneration 15 0 true
tellraw @s[scores={species=007,chr-003=1..,chr-004=0}] ["",{"text":"Venom","bold":true,"color":"green"},{"text":" activated.","color":"dark_green"}]
scoreboard players add @s[scores={chr-003=1..}] chr-004 300
tellraw @s[scores={species=007,chr-004=1}] ["",{"text":"Venom","bold":true,"color":"green"},{"text":" deactivated.","color":"dark_green"}]
execute as @s[scores={species=007,chr-004=1..}] run effect give @e[type=spider,distance=..10] speed 1 1 true
execute as @s[scores={species=007,chr-004=1..}] run effect give @e[type=spider,distance=..10] strength 1 1 true
execute as @s[scores={species=007,chr-004=1..}] run effect give @e[type=cave_spider,distance=..10] speed 1 1 true
execute as @s[scores={species=007,chr-004=1..}] run effect give @e[type=cave_spider,distance=..10] strength 1 1 true
effect give @s[scores={species=007,chr-004=1..,DamageDealt=1..}] invisibility 5 0 true
effect give @s[scores={species=007,chr-004=1..,DamageDealt=1..}] resistance 5 1 true
execute as @s[scores={species=007,chr-004=1..,DamageDealt=1..,Naked=1}] run effect give @s resistance 5 3 true
effect give @s[scores={species=007,chr-004=1..,DamageDealt=1..}] haste 5 0 true
effect give @s[scores={species=007,chr-004=1..,DamageDealt=1..}] speed 5 1 true
effect give @s[scores={species=007,chr-004=1..,DamageDealt=1..}] regeneration 5 0 true

scoreboard players set @a[scores={chr-003=1..}] chr-003 0
scoreboard players remove @a[scores={chr-004=1..}] chr-004 1