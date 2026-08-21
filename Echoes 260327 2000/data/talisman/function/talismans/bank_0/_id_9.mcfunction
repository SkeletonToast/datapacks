# sheath grease

scoreboard players set @s[scores={DamageDealt=1..}] talisman.0.9.damage_timer 100
attribute @s attack_speed modifier add talisman.0.9.attack_speed 100 add_value
attribute @s[scores={talisman.0.9.damage_timer=1..}] attack_speed modifier remove talisman.0.9.attack_speed