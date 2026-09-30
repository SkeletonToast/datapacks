execute unless items entity @s weapon.* #oakfall:light_emitting run effect give @s blindness 3 0 true
execute at @s anchored eyes run particle squid_ink ^ ^ ^ 1 1 1 0 1 normal @s
scoreboard players add @s[scores={of_fear_eligible=1}] of_fear 50