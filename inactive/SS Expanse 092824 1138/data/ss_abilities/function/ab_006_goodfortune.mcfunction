# "GOOD FORTUNE"

effect give @a[scores={ability006=1..}] minecraft:luck 1 255 true
execute as @a[scores={ability006=1..}] at @s if entity @e[type=villager,distance=..5] run effect give @s minecraft:hero_of_the_village 1 6 true