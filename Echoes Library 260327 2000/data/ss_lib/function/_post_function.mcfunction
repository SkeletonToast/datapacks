scoreboard players set @a[scores={DamageDealt=1..}] DamageDealt 0
scoreboard players set @a[scores={DamageDealtAbsorbed=1..}] DamageDealtAbsorbed 0
scoreboard players set @a[scores={DamageDealtResisted=1..}] DamageDealtResisted 0

scoreboard players set @a[scores={DamageTaken=1..}] DamageTaken 0
scoreboard players set @a[scores={DamageAbsorbed=1..}] DamageAbsorbed 0
scoreboard players set @a[scores={DamageResisted=1..}] DamageResisted 0

scoreboard players set @a[scores={PlayerKilled=1..}] PlayerKilled 0

advancement revoke @a[advancements={ss_lib:lib/using_shield=true}] only ss_lib:lib/using_shield
advancement revoke @a[advancements={ss_lib:lib/using_bow=true}] only ss_lib:lib/using_bow

execute as @e[tag=Pacified] run attribute @s follow_range modifier add pacified_follow_range -1 add_multiplied_total
execute as @e[tag=Extinguished] run attribute @s burning_time modifier add extinguished_burning_time -1 add_multiplied_total

execute as @a[scores={OnGround=1}] run tag @s add FallDamageNegated
# execute as @a[scores={OnGround=1}] run attribute @s fall_damage_multiplier modifier remove fall_damage_immunity

function ss_lib:quick_destroy

kill @e[scores={Age=0}]

# function ss_lib:safety

# attack buff particles
execute as @a[scores={attack_particle_timer=1..},tag=!attack_particle_timer] at @s run function ss_particles:attack_power_burst
tag @a[scores={attack_particle_timer=1..},tag=!attack_particle_timer] add attack_particle_timer
execute as @a[tag=attack_particle_timer] at @s run function ss_particles:attack_power_sustained
scoreboard players remove @a[scores={attack_particle_timer=1..}] attack_particle_timer 1
tag @a[scores={attack_particle_timer=0}] remove attack_particle_timer