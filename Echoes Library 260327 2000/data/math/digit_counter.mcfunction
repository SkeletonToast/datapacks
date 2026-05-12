$execute unless entity @s[scores={digit_counter=1..}] run scoreboard players operation @s generic_a = @s $(input_score)
execute unless entity @s[scores={digit_counter=1..}] run scoreboard players set @s digit_counter 1
scoreboard players operation @s[scores={generic_a=..-1}] generic_a *= @s -1



scoreboard players set @s[scores={generic_a=..9}] digit_counter 0
$scoreboard players operation @s $(output_score) = @s generic_a