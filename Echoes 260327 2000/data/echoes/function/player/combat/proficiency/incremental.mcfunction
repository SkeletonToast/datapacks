# minprof = $(stat)
# prof = proficiency_(statabbr)
# statmax = Potential
# scale = Prowess


scoreboard players add @s proficiency_recursion 1

$scoreboard players operation @s minprof = @s $(stat)
$scoreboard players operation @s prof = @s proficiency_$(statabbr)
scoreboard players operation @s statmax = @s Potential
scoreboard players operation @s scale = @s Prowess

# truth = generic_a

# mintruth = generic_b
scoreboard players operation @s mintruth = @s statmax

scoreboard players operation @s mintruth -= @s minprof
    scoreboard players operation @s mintruth /= @s 2
        scoreboard players operation @s mintruth /= @s 3
scoreboard players operation @s mintruth *= @s scale

# lies = generic_c
scoreboard players operation @s lies = @s prof
scoreboard players operation @s lies *= @s scale
scoreboard players operation @s lies -= @s prof
scoreboard players operation @s lies /= @s 10

# maybe = generic_d
    scoreboard players operation @s generic_e = @s prof
    scoreboard players operation @s generic_e /= @s 2
    scoreboard players set @s maybe 0

    # if true
    execute if score @s minprof <= @s generic_e run \
        scoreboard players operation @s maybe = @s mintruth
            # mintruth

    execute if score @s minprof <= @s generic_e run \
    execute if score @s lies > @s mintruth run \
        scoreboard players operation @s maybe = @s lies
            # lies

    # if false
    execute unless score @s minprof <= @s generic_e run \
        scoreboard players operation @s maybe = @s lies
            # lies

# final
scoreboard players operation @s proficiency_inc_sum += @s maybe

# loop break
$execute if score @s proficiency_recursion >= @s minprof \
    run scoreboard players operation @s proficiency_$(statabbr) = @s proficiency_inc_sum

execute if score @s proficiency_recursion >= @s minprof \
    run scoreboard players set @s proficiency_inc_sum 0

$execute if score @s proficiency_recursion >= @s minprof \
    run function math:round/100_reduce {"score":"proficiency_$(statabbr)"}

$execute if score @s proficiency_recursion >= @s minprof \
    run function math:round/100_reduce {"score":"proficiency_$(statabbr)"}

# recursion
$execute unless score @s proficiency_recursion >= @s minprof \
    run function echoes:player/combat/proficiency/incremental {"stat":"$(stat)","statabbr":"$(statabbr)"}

# loop break pt2
execute if score @s proficiency_recursion >= @s minprof \
    run scoreboard players set @s proficiency_recursion 1