execute at @s run particle electric_spark ~ ~1 ~ 0.3 0.3 0.3 0 5 normal @a
execute at @s run particle end_rod ~ ~1 ~ 0.05 0.05 0.05 0 1 normal @a

attribute @s movement_speed modifier add foudroyant.blitz.movement_speed 0.3 add_value
attribute @s armor modifier add foudroyant.blitz.armor 30 add_value
attribute @s armor_toughness modifier add foudroyant.blitz.armor_toughness 20 add_value
attribute @s attack_damage modifier add foudroyant.blitz.attack_damage 0.3 add_multiplied_total
attribute @s knockback_resistance modifier add foudroyant.blitz.knockback_resistance 1 add_value

execute as @s[scores={SprintTime=1..}] at @s anchored feet rotated ~90 ~0 positioned ^1.5 ^ ^ at @e[distance=..1] run damage @n[distance=..0] 1 echoes:kinetic_no_cooldown by @s

scoreboard players add @s[scores={DamageDealt=1..}] foudroyant_evasion 3
# scoreboard players set @s[scores={DamageDealt=1..}] aegis_timer 0