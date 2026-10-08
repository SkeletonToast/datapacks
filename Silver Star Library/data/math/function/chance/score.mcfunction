$scoreboard players operation @s generic_a = @s $(score)
$scoreboard players set @s generic_b $(max_value)
$execute if score @s generic_a >= @s generic_b run function $(function)
execute if score @s generic_a >= @s generic_b run return fail

scoreboard players operation @s generic_a *= #const.100 value
    scoreboard players operation @s generic_a *= #const.10 value
scoreboard players operation @s generic_a /= @s generic_b

$function parse:score_with_macros {score:generic_a,function:"math:chance/percentage",append:".",append_position:3,macros:"function:'$(function)'",prepend:"",prepend_position:0}