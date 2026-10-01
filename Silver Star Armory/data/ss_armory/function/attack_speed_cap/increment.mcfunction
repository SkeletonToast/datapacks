scoreboard players operation @s generic_a = @s AttackSpeed
scoreboard players operation @s generic_b = @s AttackSpeed
scoreboard players operation @s generic_b %= #const.10 value
scoreboard players operation @s generic_a -= @s generic_b
execute as @s[scores={generic_a=10..}] run function ss_armory:attack_speed_cap/round_down_past_10

$execute as @s[scores={generic_a=1}] run function ss_armory:attack_speed_cap/apply {"value":"1.$(value)","sign":"$(sign)"}
$execute as @s[scores={generic_a=2}] run function ss_armory:attack_speed_cap/apply {"value":"2.$(value)","sign":"$(sign)"}
$execute as @s[scores={generic_a=3}] run function ss_armory:attack_speed_cap/apply {"value":"3.$(value)","sign":"$(sign)"}
$execute as @s[scores={generic_a=4}] run function ss_armory:attack_speed_cap/apply {"value":"4.$(value)","sign":"$(sign)"}
$execute as @s[scores={generic_a=5}] run function ss_armory:attack_speed_cap/apply {"value":"5.$(value)","sign":"$(sign)"}
$execute as @s[scores={generic_a=6}] run function ss_armory:attack_speed_cap/apply {"value":"6.$(value)","sign":"$(sign)"}
$execute as @s[scores={generic_a=7}] run function ss_armory:attack_speed_cap/apply {"value":"7.$(value)","sign":"$(sign)"}
$execute as @s[scores={generic_a=8}] run function ss_armory:attack_speed_cap/apply {"value":"8.$(value)","sign":"$(sign)"}
$execute as @s[scores={generic_a=9}] run function ss_armory:attack_speed_cap/apply {"value":"9.$(value)","sign":"$(sign)"}
$execute as @s[scores={generic_a=0}] run function ss_armory:attack_speed_cap/apply {"value":"0.$(value)","sign":"$(sign)"}