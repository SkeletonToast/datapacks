# execute as @s[scores={Absorption=0..}] run return fail

$execute as $(s) if score $true true matches $(bypass_check) store result score @s Absorption run data get entity @s AbsorptionAmount 10
    $execute as $(s) if score $true true matches $(bypass_check) run function math:round {score:Absorption,round:10,reduce:true}

$execute if score $true true matches $(bypass_check) run return fail

$execute as $(s) unless score @s Absorption matches -1 run return fail
$execute as $(s) store result score @s Absorption run data get entity @s AbsorptionAmount 10
    $execute as $(s) run function math:round {score:Absorption,round:10,reduce:true}