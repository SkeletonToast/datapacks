# harvest trinket - food regenerates more

execute if score @s Food > @s talisman.1.15.food run effect give @s saturation 1 0 true

scoreboard players operation @s talisman.1.15.food = @s Food