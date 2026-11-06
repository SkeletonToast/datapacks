scoreboard players set @a[scores={TimeSinceDeath=1}] ability016-01 0
execute as @a[scores={ability016-00=1..,ability016-01=0..,ability016-02=..0,OnGround=1},predicate=ss_library:is_sneaking] at @s anchored eyes run particle minecraft:sculk_soul ^ ^ ^20 0 0 0 0 1 normal @s
execute as @a[scores={ability016-01=1,ability016-02=..0,OnGround=0}] at @s anchored eyes positioned ^ ^ ^1 run function ss_abilities:ab_016f_raycast {"run_at_start":"at @s run particle minecraft:sonic_boom ~ ~1 ~","run_at_end":"as @s run function ss_abilities:ab_016f_teleport_1"}
execute as @a[scores={ability016-00=1..,ability016-01=-1,ability016-02=..0}] at @s anchored eyes run playsound minecraft:entity.arrow.hit_player master @s

scoreboard players remove @a[scores={ability016-02=1..}] ability016-02 1
scoreboard players set @a[scores={ability016-02=1..,ability016-01=-2..}] ability016-01 -3

#sanguine step dis-eligibility
scoreboard players set @a[scores={ability021-00=1..}] ability016-01 -50

title @a[scores={ability016-00=1..,ability016-01=-19}] actionbar [{"text":"Shadow Step warming up (crouch to accelerate)","color":"#008CC9"}]
scoreboard players add @a[scores={ability016-00=1..,ability016-01=..-1,ability016-02=..0}] ability016-01 1
execute as @a[scores={ability016-00=1..,ability016-01=-1}] run title @s actionbar [{"text":"Shadow Step is ready","color":"#00B2FF"}]

execute as @a[scores={ability016-00=0}] unless entity @s[scores={ability021-00=1..}] run scoreboard players set @s ability016-01 -20

scoreboard players add @a[scores={ability016-01=1}] ability016-01 1
execute as @a[scores={ability016-01=2..,OnGround=1}] unless entity @s[predicate=ss_library:is_sneaking] run scoreboard players set @s ability016-01 0

scoreboard players remove @a[scores={DamageDealt=1..}] ability016-02 25
scoreboard players set @a[scores={DamageDealt=1..,ability016-01=..-4}] ability016-01 -3

scoreboard players remove @a[scores={ability016-00=1..}] ability016-00 1