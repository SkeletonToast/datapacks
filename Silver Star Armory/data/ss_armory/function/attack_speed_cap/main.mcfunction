# putting this here because all the attack speeds are apparently like 1.59999999999999483927418 instead of just 1.6 fo example
    # this just manually rounds up values of x.x6+


# scoreboard players operation @s generic_a = @s ssa.attack_speed_cap.attack_speed
# scoreboard players operation @s generic_a %= #const.10 value
# scoreboard players add @s[scores={generic_a=6}] ssa.attack_speed_cap.attack_speed 4
# scoreboard players add @s[scores={generic_a=7}] ssa.attack_speed_cap.attack_speed 3
# scoreboard players add @s[scores={generic_a=8}] ssa.attack_speed_cap.attack_speed 2
# scoreboard players add @s[scores={generic_a=9}] ssa.attack_speed_cap.attack_speed 1
    # because of round below, this isn't necessary

function math:divide/int {score:ssa.attack_speed_cap.attack_speed,div:10}
    # ssa.attack_speed_cap.attack_speed is stored at 100x so this just reduces it

execute if score @s ssa.attack_speed_cap.attack_speed <= @s ssa.attack_speed_cap run return fail
    # function is nullified for anyone with less than the capped attack speed, because we don't need to do anything about it

scoreboard players operation @s ssa.attack_speed_cap.attack_speed -= @s ssa.attack_speed_cap
    # otherwise, gets value over the cap

$function parse:macros/decimal {score:ssa.attack_speed_cap.attack_speed,function:"ss_armory:attack_speed_cap/apply",scale:0.1,macros:"sign:$(sign)"}

# scoreboard players operation @s generic_a = @s ssa.attack_speed_cap.attack_speed
# scoreboard players operation @s generic_a %= #const.10 value
#     # first, gets the last digit number

# $execute as @s[scores={generic_a=1}] run function ss_armory:attack_speed_cap/increment {"value":"1","sign":"$(sign)"}
# $execute as @s[scores={generic_a=2}] run function ss_armory:attack_speed_cap/increment {"value":"2","sign":"$(sign)"}
# $execute as @s[scores={generic_a=3}] run function ss_armory:attack_speed_cap/increment {"value":"3","sign":"$(sign)"}
# $execute as @s[scores={generic_a=4}] run function ss_armory:attack_speed_cap/increment {"value":"4","sign":"$(sign)"}
# $execute as @s[scores={generic_a=5}] run function ss_armory:attack_speed_cap/increment {"value":"5","sign":"$(sign)"}
# $execute as @s[scores={generic_a=6}] run function ss_armory:attack_speed_cap/increment {"value":"6","sign":"$(sign)"}
# $execute as @s[scores={generic_a=7}] run function ss_armory:attack_speed_cap/increment {"value":"7","sign":"$(sign)"}
# $execute as @s[scores={generic_a=8}] run function ss_armory:attack_speed_cap/increment {"value":"8","sign":"$(sign)"}
# $execute as @s[scores={generic_a=9}] run function ss_armory:attack_speed_cap/increment {"value":"9","sign":"$(sign)"}
# $execute as @s[scores={generic_a=0}] run function ss_armory:attack_speed_cap/increment {"value":"0","sign":"$(sign)"}

# execute as @s[scores={ssa.attack_speed_cap.attack_speed=..9}] run return fail

# how to make infinite:
    # store number of digits as score, somehow
    # each time this increments, run the division or modulus once for each digit, or whatever
    # i don't need to document this perfectly, just get the idea down so i know how to do it
    # on the final incrementation before application, you'll need to add a decimal point after the parameter you just passed