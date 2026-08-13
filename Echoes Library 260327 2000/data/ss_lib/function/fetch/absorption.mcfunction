# execute as @s[scores={Absorption=0..}] run return fail

$execute as $(s) store result score @s Absorption run data get entity @s AbsorptionAmount 10
    $execute as $(s) run function math:round/10_reduce {"score":"Absorption"}