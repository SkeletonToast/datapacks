# timers
scoreboard players remove @a[scores={wet_timer=0..}] wet_timer 1
scoreboard players remove @a[scores={incendiary_timer=0..}] incendiary_timer 1

# activity
scoreboard players remove @a[scores={alert_active=0..}] alert_active 1
scoreboard players remove @e[tag=StatusEligible,scores={immobilized_active=0..}] immobilized_active 1

# incendiary
execute as @a[scores={incendiary_timer=0}] run attribute @s minecraft:burning_time modifier remove incendiary_burning_time

# wet
execute as @a[scores={wet_timer=0}] run attribute @s minecraft:burning_time modifier remove wet_burning_time