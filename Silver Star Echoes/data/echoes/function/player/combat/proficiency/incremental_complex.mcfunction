# minprof = minprof
# prof = proficiency_(statabbr)
# statmax = Potential
# scale = Prowess

scoreboard objectives add proficiency_recursion dummy
scoreboard objectives add proficiency_inc_sum dummy
scoreboard objectives add minprof dummy
scoreboard objectives add prof dummy
scoreboard objectives add statmax dummy
scoreboard objectives add scale dummy
scoreboard objectives add truth dummy
scoreboard objectives add mintruth dummy
scoreboard objectives add lies dummy
scoreboard objectives add maybe dummy

scoreboard players add @s proficiency_recursion 1

$scoreboard players operation @s minprof = @s $(stat)
$scoreboard players operation @s prof = @s proficiency_$(statabbr)
scoreboard players operation @s statmax = @s Potential
scoreboard players operation @s scale = @s Prowess
    scoreboard players operation @s scale *= #const.100 value
    scoreboard players operation @s scale *= #const.50 value

# truth = generic_a
scoreboard players operation @s generic_e = @s prof
    scoreboard players operation @s generic_e *= #const.50 value
scoreboard players operation @s truth = @s statmax
scoreboard players operation @s truth -= @s generic_e
    scoreboard players operation @s truth /= #const.6 value

# mintruth = generic_b
scoreboard players operation @s mintruth = @s statmax
    scoreboard players operation @s mintruth *= #const.100 value

scoreboard players operation @s mintruth -= @s minprof
    scoreboard players operation @s mintruth /= #const.6 value

# lies = generic_c
scoreboard players operation @s lies = @s statmax
    scoreboard players operation @s lies *= #const.100 value

scoreboard players operation @s lies -= @s minprof
    scoreboard players operation @s lies /= #const.5 value

# maybe = generic_d
    scoreboard players operation @s generic_e = @s prof
    scoreboard players operation @s generic_e /= #const.2 value
    # remember, generic_e is already set to prof / 2
    # also remember that the proficiency value in-game is going to be \
        # 100,000x larger than the value displayed in the spreadsheet
    scoreboard players set @s maybe 0

    # if true
    execute if score @s minprof <= @s generic_e run \
        scoreboard players operation @s maybe = @s truth
            # truth

    execute if score @s minprof <= @s generic_e run \
    execute if score @s mintruth > @s truth run \
        scoreboard players operation @s maybe = @s mintruth
            # mintruth

    # if false
    execute unless score @s minprof <= @s generic_e run \
        scoreboard players operation @s maybe = @s lies
            # lies

    execute unless score @s minprof <= @s generic_e run \
    execute if score @s truth < @s generic_c run \
        scoreboard players operation @s maybe = @s truth
            # truth

# final
scoreboard players operation @s maybe *= @s scale
    scoreboard players operation @s maybe *= #const.100 value
scoreboard players operation @s generic_c = @s prof
    scoreboard players operation @s generic_c *= @s scale

scoreboard players operation @s generic_e = @s maybe
execute if score @s generic_c > @s maybe run scoreboard players operation @s generic_e = @s generic_c

scoreboard players operation @s proficiency_inc_sum += @s generic_e

# loop break
$execute if score @s proficiency_recursion >= @s minprof \
    run scoreboard players operation @s proficiency_$(statabbr) = @s proficiency_inc_sum

execute if score @s proficiency_recursion >= @s minprof \
    run scoreboard players set @s proficiency_inc_sum 0

$execute if score @s proficiency_recursion >= @s minprof \
    run function math:round {score:proficiency_$(statabbr),round:100,reduce:true}
$execute if score @s proficiency_recursion >= @s minprof \
    run function math:round {score:proficiency_$(statabbr),round:100,reduce:true}

# recursion
$execute unless score @s proficiency_recursion >= @s minprof \
    run function echoes:player/combat/proficiency/incremental {"stat":"$(stat)","statabbr":"$(statabbr)"}

# loop break pt2
execute if score @s proficiency_recursion >= @s minprof \
    run scoreboard players set @s proficiency_recursion 1