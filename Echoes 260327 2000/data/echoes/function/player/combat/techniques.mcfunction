execute as @e[tag=TechniqueProd] run attribute @s gravity modifier remove technique.prod.gravity
execute as @a[tag=InCombat,scores={proficiency=200..}] run function echoes:player/combat/techniques/_main

    execute as @a[scores={SneakTime=0}] run function echoes:player/combat/techniques/prod_disable
    execute as @a[scores={SneakTime=6}] run function echoes:player/combat/techniques/prod_disable

    execute as @a[predicate=!ss_lib:is/sprinting] run function echoes:player/combat/techniques/repel_disable
    execute as @a[predicate=!ss_lib:is/ascending] run function echoes:player/combat/techniques/repel_disable
    execute as @a[scores={OnGround=1}] run function echoes:player/combat/techniques/repel_disable