$execute as $(s) run function ss_lib:fetch/absorption {s:"$(s)",bypass_check:$(bypass_check)}

$execute as $(s) if score $true true matches $(bypass_check) store result score @s Health run data get entity @s Health 10
    $execute as $(s) if score $true true matches $(bypass_check) run function math:round {score:Health,round:10,reduce:true}

# non-bypassed check
$execute if score $true true matches $(bypass_check) run return fail
$execute as $(s) unless score @s Health matches -1 run scoreboard players operation @s Health *= #const.10 value
    # this is here because I can't actually check whether or not to run the round function, so if the score was already set, then it'll just be multiplied by 10 and then divided by 10
$execute as $(s) store result score @s Health run data get entity @s Health 10
    $execute as $(s) run function math:round {score:Health,round:10,reduce:true}