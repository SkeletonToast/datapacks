$execute as $(s) store result score @s Health run data get entity @s Health 10
    $execute as $(s) run function math:round {score:Health,round:10,reduce:true}
$execute as $(s) run function ss_lib:fetch/absorption {"s":"$(s)"}
$execute as $(s) if entity @s[scores={BaseMaxHealth=..0}] store result score @s BaseMaxHealth run attribute @s max_health base get