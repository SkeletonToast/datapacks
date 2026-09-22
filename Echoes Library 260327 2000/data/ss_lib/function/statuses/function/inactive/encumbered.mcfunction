# $execute store result storage $(UUID) encumbered_multiplier double 0.01 run scoreboard players get @s encumbered_amount
# $function ss_lib:status/encumbered_increment with storage $(UUID)

execute as @s[scores={encumbered_amount=100..}] run scoreboard players set @s encumbered_amount 99
scoreboard players operation @s generic_a = @s encumbered_amount

# function parse:score {"score":"encumbered_amount","function":"ss_lib:status/encumbered_apply",prepend_position:"0",prepend:"",append_position:"2",append:"."}

execute as @s[scores={generic_a=90..99}] run function ss_lib:status/encumbered_increment {"multiplier":"0.9"}
execute as @s[scores={generic_a=80..89}] run function ss_lib:status/encumbered_increment {"multiplier":"0.8"}
execute as @s[scores={generic_a=70..79}] run function ss_lib:status/encumbered_increment {"multiplier":"0.7"}
execute as @s[scores={generic_a=60..69}] run function ss_lib:status/encumbered_increment {"multiplier":"0.6"}
execute as @s[scores={generic_a=50..59}] run function ss_lib:status/encumbered_increment {"multiplier":"0.5"}
execute as @s[scores={generic_a=40..49}] run function ss_lib:status/encumbered_increment {"multiplier":"0.4"}
execute as @s[scores={generic_a=30..39}] run function ss_lib:status/encumbered_increment {"multiplier":"0.3"}
execute as @s[scores={generic_a=20..29}] run function ss_lib:status/encumbered_increment {"multiplier":"0.2"}
execute as @s[scores={generic_a=10..19}] run function ss_lib:status/encumbered_increment {"multiplier":"0.1"}
execute as @s[scores={generic_a=00..09}] run function ss_lib:status/encumbered_increment {"multiplier":"0.0"}