# just add values as they appear to sse.radiation.add
    # also subtract the radiation resistance from it every tick
# overworld: 1
# nether: 2
# end: 3
# erdefret: 4
# lacuna: 5
# virin velat: 6
# blue dream: 7
    # (the blue pavilion is a sanctuary location, so you're immune to radiation while you stay there)

execute as @a[scores={Dimension=2}] run scoreboard players add @s sse.radiation.add 9
execute as @a[scores={Dimension=4}] run scoreboard players add @s sse.radiation.add 9
execute as @a[scores={Dimension=7}] run scoreboard players add @s sse.radiation.add 5
execute as @a[scores={Dimension=3}] run scoreboard players add @s sse.radiation.add 18

function math:percentage_score {base:sse.radiation.add,percentage:sse.difficulty.radiation_multiplier}
scoreboard players operation @s sse.radiation.add -= @s sse.radiation.resistance
scoreboard players operation @s sse.radiation.resistance = @s Vitality