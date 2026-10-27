execute as @a[advancements={familiars:tame_animal=true}] as @e[type=#ss_lib:tameable,distance=..20] at @s on owner if entity @s as @n[type=#ss_lib:tameable,limit=1,distance=0] \
    run function familiars:register

advancement revoke @a[advancements={familiars:tame_animal=true}] only familiars:tame_animal