xp add @s -1 points
scoreboard players add @s xp_stored 1

# execute if score @s xp_level >= @s Mind run function echoes:player/xp_level/cap
    # don't know if this works. it would need xp_level to update in-between ticks, which is a maybe, bc otherwise it would just memory leak