$execute as $(s) if score $true true matches $(bypass_check) store result score @s AttackDamage run attribute @s attack_damage get $(scale)

$execute if score $true true matches $(bypass_check) run return fail
$execute as $(s) if score @s AttackDamage matches -1 store result score @s AttackDamage run attribute @s attack_damage get $(scale)
$execute as $(s) unless score @s AttackDamage matches -1 unless score @s ssl.fetch.attack_damage.scale matches $(scale) \
    store result score @s AttackDamage run attribute @s attack_damage get $(scale)