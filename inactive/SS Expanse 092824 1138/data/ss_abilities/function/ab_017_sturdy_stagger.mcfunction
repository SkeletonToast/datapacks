tag @s[tag=!Staggerable] add Staggerable
scoreboard players set @a[scores={ability017=1..,Staggered=0,StaggerRechargeTimer=..12000}] StaggerRechargeTimer 12001
effect give @a[scores={ability017=1..,Staggered=1}] minecraft:hunger 1 49 true
    # execute as @a[scores={ability017=1..,Staggered=1,ParryTimer=1..}] if entity @s[scores={ParryTimer=..10,DamageTaken=1..}] run scoreboard players add @s StaggerDeathTimer 60
execute as @a[scores={Staggered=1,ability017=1..,Food=19..}] run tag @s add StaggerHealing
scoreboard players remove @a[scores={Staggered=1,ability017=1..},tag=!StaggerHealing] StaggerDeathTimer 1
scoreboard players add @a[scores={Staggered=1,StaggerDamageTaken=10..,ability017=1..}] StaggerRevivalTimer 100