$execute as $(s) if score $true true matches $(bypass_check) store result score @s Absorption run data get entity @s AbsorptionAmount 10
    $execute as $(s) if score $true true matches $(bypass_check) run function math:divide/int {score:Absorption,div:10}

$execute if score $true true matches $(bypass_check) run return fail
$execute as $(s) unless score @s Absorption matches -1 run scoreboard players operation @s Absorption *= #const.10 value
    # this is here because I can't actually check whether or not to run the round function, so if the score was already set, then it'll just be multiplied by 10 and then divided by 10
$execute as $(s) if score @s Absorption matches -1 store result score @s Absorption run data get entity @s AbsorptionAmount 10
    $execute as $(s) run function math:divide/int {score:Absorption,div:10}