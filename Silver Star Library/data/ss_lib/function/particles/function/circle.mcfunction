# radius, nodes, particle
# divide 360 by number of nodes, find the factor that gives a product CLOSEST to 360
    # run circle/draw with that number, rotate by that number however many times you need to in order to get to 360

scoreboard players set @s generic_a 360
$scoreboard players set @s generic_b $(nodes)
scoreboard players operation @s generic_a /= @s generic_b