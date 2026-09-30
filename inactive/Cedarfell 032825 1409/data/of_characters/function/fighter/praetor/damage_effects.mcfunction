playsound entity.blaze.hurt player @s ~ ~ ~ 0.4 0.5
playsound block.anvil.place player @s ~ ~ ~ 0.2 1.2
playsound block.anvil.place player @s ~ ~ ~ 0.1 0.5
scoreboard players add @s praetor_combo 20
execute if entity @s[scores={DamageDealt=50..}] run particle flash ^ ^ ^1 0 0 0 0 1 normal @s