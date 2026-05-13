$execute unless entity @s[scores={digit_counter=1..}] run scoreboard players operation @s generic_a = @s $(input_score)
execute unless entity @s[scores={digit_counter=1..}] run scoreboard players set @s digit_counter 1
execute as @s[scores={generic_a=10..}] run scoreboard players add @s digit_counter 1
scoreboard players operation @s[scores={generic_a=..-1}] generic_a *= @s -1
scoreboard players operation @s generic_a /= @s 10

$scoreboard players operation @s $(output_score) = @s digit_counter
execute as @s[scores={generic_a=..9}] run scoreboard players set @s digit_counter 0
$execute as @s[scores={generic_a=10..}] run function math:digit_counter {"input_score":"$(input_score)","output_score":"$(output_score)"}