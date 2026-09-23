execute as @s[scores={tormented_random=1..}] as @s[scores={tormented_random=..2}] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~5 0.5 1
execute as @s[scores={tormented_random=3..}] as @s[scores={tormented_random=..4}] run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~-5 0.5 1
execute as @s[scores={tormented_random=5..}] as @s[scores={tormented_random=..6}] run playsound minecraft:entity.player.attack.crit player @s ~5 ~ ~ 0.5 1
damage @s 1 wither