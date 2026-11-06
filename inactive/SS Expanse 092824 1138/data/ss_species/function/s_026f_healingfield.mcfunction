execute as @e[type=!#ss_library:not_alive,distance=..4,scores={species026-03=0,species026-02=0}] unless entity @s[scores={species=026},predicate=ss_species:holding_golden_weapon,predicate=ss_library:is_sneaking,level=1..] run scoreboard players set @s recover_timer 1
effect give @e[type=!#ss_library:not_alive,distance=..4,scores={recover_amount=2,species026-03=0,species026-02=0}] absorption 2 0 true
effect give @e[type=!#ss_library:not_alive,distance=..4,scores={recover_amount=2,species026-03=0,species026-02=0}] weakness 2 0 true
execute at @e[type=!#ss_library:not_alive,distance=..4,scores={recover_amount=2,species026-03=0,species026-02=0}] run function ss_particles:heart_burst
function ss_particles:healing_burst_crouch
xp add @s -1 points
execute as @e[type=!#ss_library:not_alive,distance=..4,scores={species026-03=0,species026-02=0,species026-04=50..}] run xp add @p[scores={species026-03=1}] 1 points
scoreboard players remove @e[type=!#ss_library:not_alive,distance=..4,scores={species026-03=0,species026-02=0,species026-04=50..}] species026-04 50
scoreboard players set @s species026-03 2