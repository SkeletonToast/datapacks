$execute as @s[scores={bleeding_active=-1}] run function ss_statuses:_display_status {"type":"-","color":"#ff0000","status":"Bleeding",append:" ($(damage)x)"}

execute as @s[type=!player] at @s on attacker run scoreboard players operation @n[type=!player] bleeding_damage += @s DamageDealt
scoreboard players operation @s[type=player,scores={DamageTaken=11..}] bleeding_damage += @s DamageTaken
$execute at @s[scores={bleeding_cooldown=1}] on attacker run damage @n[distance=0,scores={bleeding_damage=20..}] $(damage) wither by @s
execute at @s[scores={bleeding_damage=20..}] run particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0 0 0 0 1 normal @a

execute as @s[scores={bleeding_cooldown=1}] if score @s bleeding_damage >= @s Health run scoreboard players operation @s bleeding_damage -= @s Health
scoreboard players remove @s[scores={Health=..10,bleeding_cooldown=1}] bleeding_damage 10

scoreboard players add @s bleeding_cooldown 1
scoreboard players set @s[scores={bleeding_cooldown=20..}] bleeding_cooldown 0

scoreboard players set @s bleeding_active 1