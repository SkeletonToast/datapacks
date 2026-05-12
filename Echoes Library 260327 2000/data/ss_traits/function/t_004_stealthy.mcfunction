execute as @a[scores={trait004=1..}] run attribute @s sneaking_speed modifier add trait004_sneaking_speed 1 add_multiplied_base

scoreboard players add @a[scores={trait004=1..,ItemSelected=0}] trait004-01 1
scoreboard players remove @a[scores={trait004=1..,ItemOffhand=1}] trait004-01 1
scoreboard players add @a[scores={trait004=1..},predicate=ss_lib:lightlevel_5_max] trait004-01 1
scoreboard players add @a[scores={trait004=1..},predicate=ss_traits:stealthy_weather] trait004-01 1
scoreboard players add @a[scores={trait004=1..},predicate=ss_lib:is/sneaking] trait004-01 1
scoreboard players add @a[scores={trait004=1..,Health=..5}] trait004-01 1

scoreboard players set @a[scores={trait004=1..,Armorless=0}] trait004-01 0

effect give @a[scores={trait004=1..,trait004-01=3..}] invisibility 1 0 true
effect give @a[scores={trait004=1..,trait004-01=3..}] resistance 1 2 true
effect clear @a[scores={trait004=1..,trait004-01=3..}] glowing
execute as @a[scores={trait004=1..,trait004-01=3..}] at @s run function ss_statuses:lightweight {"multiplier":"0.2"}

execute at @a[scores={trait004=1..,DamageDealt=1..}] as @e[distance=..5,type=#ss_lib:hostile] at @s on attacker if entity @s[scores={trait004=1..,DamageDealt=1..}] run scoreboard players add @n[distance=0,type=#ss_lib:hostile] trait004-02 100
execute at @a[scores={trait004=1..}] as @e[distance=..5,type=#ss_lib:hostile,scores={trait004-02=1..99}] run scoreboard players set @s trait004 100
execute as @a[scores={trait004=1..,trait004-01=2..}] at @s run function ss_traits:t_004f_pacify with entity @s
scoreboard players remove @e[type=#ss_lib:hostile,scores={trait004-02=1..}] trait004-02 1

effect clear @a[scores={trait004=1..,trait004-01=..1}] invisibility