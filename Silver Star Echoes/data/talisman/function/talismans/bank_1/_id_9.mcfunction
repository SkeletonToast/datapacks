# sheath grease

execute unless score @s talisman.1.9.damage_timer matches 1.. run attribute @s attack_speed modifier add talisman.1.9.attack_speed 100 add_value
scoreboard players set @s[scores={DamageDealt=1..}] talisman.1.9.damage_timer 100

# say sheathgrease