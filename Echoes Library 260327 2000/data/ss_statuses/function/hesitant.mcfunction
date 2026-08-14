execute as @s[scores={hesitant_active=-1}] run function ss_statuses:_display_status {"type":"-","color":"#4bb192","status":"Hesitant",append:""}

scoreboard players operation @s generic_a = @s hesitant_amount

execute as @s[scores={generic_a=90..99}] run function ss_statuses:hesitant_increment {"multiplier":"0.9"}
execute as @s[scores={generic_a=80..89}] run function ss_statuses:hesitant_increment {"multiplier":"0.8"}
execute as @s[scores={generic_a=70..79}] run function ss_statuses:hesitant_increment {"multiplier":"0.7"}
execute as @s[scores={generic_a=60..69}] run function ss_statuses:hesitant_increment {"multiplier":"0.6"}
execute as @s[scores={generic_a=50..59}] run function ss_statuses:hesitant_increment {"multiplier":"0.5"}
execute as @s[scores={generic_a=40..49}] run function ss_statuses:hesitant_increment {"multiplier":"0.4"}
execute as @s[scores={generic_a=30..39}] run function ss_statuses:hesitant_increment {"multiplier":"0.3"}
execute as @s[scores={generic_a=20..29}] run function ss_statuses:hesitant_increment {"multiplier":"0.2"}
execute as @s[scores={generic_a=10..19}] run function ss_statuses:hesitant_increment {"multiplier":"0.1"}
execute as @s[scores={generic_a=00..09}] run function ss_statuses:hesitant_increment {"multiplier":"0.0"}