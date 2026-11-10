$scoreboard players operation @s generic_a = @s $(score)
$scoreboard players set @s generic_b $(max_value)
$execute if score @s generic_a >= @s generic_b run function $(function)
execute if score @s generic_a >= @s generic_b run return fail

scoreboard players operation @s generic_a *= #const.100 value
    scoreboard players operation @s generic_a *= #const.10 value
scoreboard players operation @s generic_a /= @s generic_b

$function parse:decimal_with_macros {score:generic_a,function:"math:chance/percentage",scale:0.001,macros:"run:'$(run)'"}