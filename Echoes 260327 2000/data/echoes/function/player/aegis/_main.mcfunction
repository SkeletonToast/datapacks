# remember maximum aegis is calculated in post function!!

execute as @a run function echoes:player/aegis/overheal_calculate

# execute as @a if score @s aegis_timer > @s aegis_timer_max run scoreboard players operation @s aegis_timer = @s aegis_timer_max

scoreboard players set @a[scores={aegis_timer=201..}] aegis_timer 200
scoreboard players add @a[scores={DamageTaken=1..}] aegis_timer 50
scoreboard players add @a aegis_timer 0

# golden apples
scoreboard players set @a[scores={used_golden_apple=1..}] aegis_timer 0
effect give @a[scores={used_enchanted_golden_apple=1..}] absorption infinite 4 true

# application
scoreboard players set @a[scores={aegis_timer=..-1}] aegis_timer 0

effect give @a[scores={killed_mob=1..,aegis_amplifier_max=0..}] absorption 5 0 true
effect give @a[scores={killed_player=1..,aegis_amplifier_max=0}] absorption 15 0 true
effect give @a[scores={killed_player=1..,aegis_amplifier_max=1..}] absorption 15 1 true
effect give @a[scores={killed_mob=1..,Vitality=0}] regeneration 1 2 true
effect give @a[scores={killed_player=1..,Vitality=0}] absorption 1 3 true

execute as @a[scores={aegis_timer=0}] run function echoes:player/aegis/apply

scoreboard players set @a[tag=AegisApplied] aegis_timer_max 100

execute as @a[tag=AegisApplied,scores={Soul=..79}] run scoreboard players operation @s aegis_timer_max -= @s Soul
execute as @a[tag=AegisApplied,scores={Soul=80..}] run scoreboard players remove @s aegis_timer_max 80

function ss_lib:fetch/armor {s:"@a[tag=AegisApplied]"}
execute as @a[tag=AegisApplied,scores={aegis_timer_max=1..,HelmetType=2}] run scoreboard players remove @s aegis_timer_max 10
execute as @a[tag=AegisApplied,scores={aegis_timer_max=1..,ChestplateType=2}] run scoreboard players remove @s aegis_timer_max 10
execute as @a[tag=AegisApplied,scores={aegis_timer_max=1..,LeggingsType=2}] run scoreboard players remove @s aegis_timer_max 10
execute as @a[tag=AegisApplied,scores={aegis_timer_max=1..,BootsType=2}] run scoreboard players remove @s aegis_timer_max 10

scoreboard players set @a[scores={aegis_timer_max=..0}] aegis_timer_max 1

execute as @a[tag=AegisApplied,scores={aegis_timer_max=..16}] if score @s aegis_amplifier >= @s aegis_amplifier_max run scoreboard players set @s aegis_timer_max 17
    # for now, this limiter exists because regeneration 1 2 can't apply any faster than once every 0.85 seconds.
    # if regeneration 1 3 is enabled, it can be applied once every 0.25 seconds
# execute as @a[tag=AegisApplied,scores={aegis_timer_max=..9}] if score @s aegis_amplifier >= @s aegis_amplifier_max run scoreboard players set @s aegis_timer_max 10

execute as @a[tag=InCombat] run scoreboard players operation @s aegis_timer_max *= @s 2
execute as @a[tag=AegisApplied] run scoreboard players operation @s aegis_timer = @s aegis_timer_max

scoreboard players remove @a[scores={aegis_timer=1..}] aegis_timer 1
scoreboard players remove @a[scores={aegis_timer=1..,Food=20}] aegis_timer 1
execute as @a[scores={TimeSinceRest=0,aegis_timer=1..}] run scoreboard players remove @s aegis_timer 1

scoreboard players set @a[scores={used_golden_apple=1..}] used_golden_apple 0
scoreboard players set @a[scores={used_enchanted_golden_apple=1..}] used_enchanted_golden_apple 0

scoreboard players set @a killed_mob 0
scoreboard players set @a killed_player 0