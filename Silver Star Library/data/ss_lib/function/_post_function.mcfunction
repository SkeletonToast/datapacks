function elixir:_tick

scoreboard players set @a DamageDealt 0
scoreboard players set @a DamageDealtAbsorbed 0
scoreboard players set @a DamageDealtResisted 0

scoreboard players set @a DamageTaken 0
scoreboard players set @a DamageAbsorbed 0
scoreboard players set @a DamageResisted 0

scoreboard players set @a PlayerKilled 0

advancement revoke @a[advancements={ss_lib:lib/using_shield=true}] only ss_lib:lib/using_shield
advancement revoke @a[advancements={ss_lib:lib/using_bow=true}] only ss_lib:lib/using_bow

execute as @e[tag=Pacified] run attribute @s follow_range modifier add pacified_follow_range -1 add_multiplied_total
execute as @e[tag=Extinguished] run attribute @s burning_time modifier add extinguished_burning_time -1 add_multiplied_total

execute as @a[scores={OnGround=1}] run tag @s add FallDamageNegated
# execute as @a[scores={OnGround=1}] run attribute @s fall_damage_multiplier modifier remove fall_damage_immunity

function ss_lib:quick_destroy

kill @e[scores={Age=0}]

scoreboard players remove @a pause_actionbars 1

# circle module
    # execute as @e[scores={circle_timer=1},type=marker,tag=ssl.circle] run function ss_lib:circle/internal/marker
    # scoreboard players remove @e[type=marker,tag=ssl.circle] circle_timer 1
    # tag @e[scores={circle_timer=0},type=marker,tag=ssl.circle] remove ssl.circle

# function ss_lib:safety

# attack buff particles
execute as @a[scores={attack_particle_timer=1..},tag=!attack_particle_timer] at @s run function ss_lib:particles/function/attack_power_burst
tag @a[scores={attack_particle_timer=1..},tag=!attack_particle_timer] add attack_particle_timer
execute as @a[tag=attack_particle_timer] at @s run function ss_lib:particles/function/attack_power_sustained
scoreboard players remove @a[scores={attack_particle_timer=1..}] attack_particle_timer 1
tag @a[scores={attack_particle_timer=0}] remove attack_particle_timer