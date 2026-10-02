$execute as $(s) if score $true true matches $(bypass_check) store result score @s AttackDamage run attribute @s attack_damage get $(scale)
$execute as $(s) unless score $true true matches $(bypass_check) \
    if score @s AttackDamage matches -1 \
    store result score @s AttackDamage run attribute @s attack_damage get $(scale)
$execute as $(s) unless score $true true matches $(bypass_check) \
    unless score @s AttackDamage matches -1 \
    unless score @s ssl.fetch.attack_damage.scale matches $(scale) \
    store result score @s AttackDamage run attribute @s attack_damage get $(scale)