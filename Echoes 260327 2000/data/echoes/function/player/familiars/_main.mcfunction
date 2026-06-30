execute as @a[advancements={echoes:tame_animal=true}] as @e[type=wolf,distance=..20] at @s on owner if entity @s as @n[type=wolf,limit=1] \
    run attribute @s minecraft:max_health modifier add echoes:familiar_health_buffer 100 add_value

advancement revoke @a[advancements={echoes:tame_animal=true}] only echoes:tame_animal