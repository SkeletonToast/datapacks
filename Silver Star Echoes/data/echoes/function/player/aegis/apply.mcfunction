function ss_lib:fetch/health {s:"@s",bypass_check:false}

# execute at @s[scores={Absorption=..19}] unless entity @s[predicate=ss_lib:is/hiding] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.3 0.3 0.3 0 3 normal @a[distance=..10]
# execute at @s[scores={Absorption=..19}] unless entity @s[predicate=ss_lib:is/hiding] run particle minecraft:dust{color:[1.00,0.50,0.00],scale:1} ~ ~1 ~ 0.4 0.4 0.4 0 10 normal @a[distance=..10]

scoreboard players set @s[scores={Soul=0}] aegis_amplifier_max -1
scoreboard players set @s[scores={Soul=..29,aegis_amplifier_max=5..}] aegis_amplifier_max 4

scoreboard players operation @s aegis_amplifier = @s Absorption
scoreboard players operation @s aegis_amplifier /= #const.4 value
    scoreboard players set @s[scores={aegis_amplifier=..-1}] aegis_amplifier 0

# difficulty
scoreboard players set @s[scores={sse.difficulty=1,aegis_amplifier_max=2..}] aegis_amplifier_max 1
scoreboard players set @s[scores={sse.difficulty=2,aegis_amplifier_max=5..}] aegis_amplifier_max 4

execute as @s[scores={aegis_amplifier_max=0..}] if score @s aegis_amplifier <= @s aegis_amplifier_max run function parse:simple {score:aegis_amplifier,function:"echoes:player/aegis/absorption"}
execute as @s[scores={aegis_amplifier_max=0..}] if score @s aegis_amplifier > @s aegis_amplifier_max run function parse:simple {score:aegis_amplifier_max,function:"echoes:player/aegis/absorption"}

execute as @s[scores={sse.Hunger=0},tag=!InCombat] if score @s aegis_amplifier >= @s aegis_amplifier_max run function echoes:player/aegis/overheal
execute as @s[scores={TimeSinceRest=..0}] if score @s aegis_amplifier >= @s aegis_amplifier_max run function echoes:player/aegis/overheal

tag @s add AegisApplied