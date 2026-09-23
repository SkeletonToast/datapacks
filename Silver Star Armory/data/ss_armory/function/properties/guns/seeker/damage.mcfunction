damage @n 6 minecraft:magic
tag @n add StatusEligible
execute as @n unless entity @s[scores={shocked_timer=100..}] run scoreboard players add @s shocked_timer 20
scoreboard players add @s[scores={SeekerLifetime=..3}] SeekerLifetime 3
scoreboard players add @s raycast_lifetime 3