tag @s add Frightening

execute at @s as @a[tag=!Frightening,distance=..30,predicate=ss_lib:status/looking_at_frightening] unless entity @s[scores={frightened_timer=1..}] run scoreboard players add @s frightened_timer 18
execute at @s run scoreboard players add @a[tag=!Frightening,distance=..30,predicate=ss_lib:status/looking_at_frightening] frightened_timer 2
execute at @s as @a[tag=!Frightening,distance=..20,scores={DamageTaken=1..}] at @s on attacker if entity @s[tag=Unnerving] as @p[distance=0] run scoreboard players operation @s frightened_timer += @s DamageTaken
execute at @s run scoreboard players add @a[tag=!Frightening,distance=..10] frightened_timer 2

scoreboard players set @s HasStatus 1