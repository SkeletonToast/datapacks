$execute as $(s) at @s if dimension minecraft:overworld run scoreboard players set @s Dimension 1
$execute as $(s) at @s if dimension minecraft:the_nether run scoreboard players set @s Dimension 2
$execute as $(s) at @s if dimension minecraft:the_end run scoreboard players set @s Dimension 3

$function ss_lib:fetch/coordinates {s:"$(s)"}