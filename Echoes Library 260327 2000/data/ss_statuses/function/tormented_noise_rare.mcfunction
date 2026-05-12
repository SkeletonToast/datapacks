execute as @s[scores={tormented_random=1..}] as @s[scores={tormented_random=..2}] run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 2 0.1
execute as @s[scores={tormented_random=3..}] as @s[scores={tormented_random=..4}] run playsound minecraft:ambient.cave player @s ~ ~ ~ 2 0.1
execute as @s[scores={tormented_random=5..}] as @s[scores={tormented_random=..6}] run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 2 0.1
effect give @s poison 10 1 true
scoreboard players add @s terrified_timer 200