execute as @a[scores={incendiary_timer=1..}] run function ss_statuses:incendiary
    execute as @a[scores={incendiary_timer=-2}] run function ss_statuses:incendiary
execute as @a[gamemode=!spectator,scores={wet_timer=1..}] run function ss_statuses:wet
    # execute as @a[scores={wet_timer=1..}] unless entity @s[scores={wet_active=1}] run function ss_statuses:wet