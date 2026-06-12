function ss_lib:fetch/health {"s":"@s"}

# execute at @s[scores={Absorption=..19}] unless entity @s[predicate=ss_lib:is/hiding] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.3 0.3 0.3 0 3 normal @a[distance=..10]
# execute at @s[scores={Absorption=..19}] unless entity @s[predicate=ss_lib:is/hiding] run particle minecraft:dust{color:[1.00,0.50,0.00],scale:1} ~ ~1 ~ 0.4 0.4 0.4 0 10 normal @a[distance=..10]

scoreboard players set @s[scores={Soul=0}] aegis_amplifier_max -1

scoreboard players operation @s aegis_amplifier = @s Absorption
scoreboard players operation @s aegis_amplifier /= @s 2
    scoreboard players operation @s aegis_amplifier /= @s 2
    scoreboard players set @s[scores={aegis_amplifier=..-1}] aegis_amplifier 0

# difficulty
scoreboard players set @s[scores={EchoDifficulty=1,aegis_amplifier_max=2..}] aegis_amplifier_max 1
scoreboard players set @s[scores={EchoDifficulty=2,aegis_amplifier_max=5..}] aegis_amplifier_max 4

execute as @s[scores={aegis_amplifier_max=0..}] if score @s aegis_amplifier <= @s aegis_amplifier_max run function parse:score_unended {"function":"echoes:player/aegis_absorption","score":"aegis_amplifier"}
execute as @s[scores={aegis_amplifier_max=0..}] if score @s aegis_amplifier > @s aegis_amplifier_max run function parse:score_unended {"function":"echoes:player/aegis_absorption","score":"aegis_amplifier_max"}

execute as @s[scores={Food=20,Resolve=15..},tag=!InCombat] if score @s aegis_amplifier >= @s aegis_amplifier_max run function echoes:player/aegis_overheal
execute as @s[scores={TimeSinceRest=..0}] unless score @s aegis_amplifier >= @s aegis_amplifier_max run function echoes:player/aegis_overheal

tag @s add AegisApplied
