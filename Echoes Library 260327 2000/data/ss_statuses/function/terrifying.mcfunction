tag @s add Terrifying

execute at @s as @a[tag=!Terrifying,distance=..30,predicate=ss_statuses:looking_at_terrifying] unless entity @s[scores={terrified_timer=1..}] run scoreboard players add @s terrified_timer 18
execute at @s run scoreboard players add @a[tag=!Terrifying,distance=..30,predicate=ss_statuses:looking_at_terrifying] terrified_timer 2
execute at @s as @a[tag=!Terrifying,distance=..20,scores={DamageTaken=1..}] at @s on attacker if entity @s[tag=Terrifying] as @p[distance=0] run scoreboard players operation @s terrified_timer += @s DamageTaken
execute at @s run scoreboard players add @a[tag=!Terrifying,distance=..10] terrified_timer 2

scoreboard players set @s HasStatus 1