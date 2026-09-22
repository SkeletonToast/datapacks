tag @s add Unnerving

execute at @s as @a[tag=!Unnerving,distance=..30,predicate=ss_lib:status/looking_at_unnerving] unless entity @s[scores={unnerved_timer=1..}] run scoreboard players add @s terrified_timer 18
execute at @s run scoreboard players add @a[tag=!Unnerving,distance=..30,predicate=ss_lib:status/looking_at_unnerving] unnerved_timer 2
execute at @s as @a[tag=!Unnerving,distance=..20,scores={DamageTaken=1..}] at @s on attacker if entity @s[tag=Unnerving] as @p[distance=0] run scoreboard players operation @s unnerved_timer += @s DamageTaken
execute at @s run scoreboard players add @a[tag=!Unnerving,distance=..10] unnerved_timer 2

scoreboard players set @s HasStatus 1