$execute as $(s) if score $true true matches $(bypass_check) store result score @s AttackSpeed run attribute @s attack_speed get $(scale)

$execute if score $true true matches $(bypass_check) run return fail
$execute as $(s) if score @s AttackSpeed matches -1 store result score @s AttackSpeed run attribute @s attack_speed get $(scale)
$execute as $(s) unless score @s AttackSpeed matches -1 unless score @s ssl.fetch.attack_speed.scale matches $(scale) \
    store result score @s AttackSpeed run attribute @s attack_speed get $(scale)