# proficiency
execute as @a run attribute @s attack_damage modifier remove proficiency_attack_damage
execute as @a run attribute @s attack_speed modifier remove proficiency_attack_speed
execute as @a[tag=InCombat] run function echoes:player/combat/proficiency/_main
scoreboard players set @a[scores={used_goat_horn=1..}] used_goat_horn 0

execute as @a run function echoes:player/combat/proficiency/apply

scoreboard players remove @a[scores={proficiency_temp=1..}] proficiency_temp 100
scoreboard players set @a[scores={proficiency_temp=..-1}] proficiency_temp 0

scoreboard players set @a[scores={in_combat=1..100}] in_combat 0
scoreboard players remove @a[scores={in_combat=101..}] in_combat 100
execute as @a[scores={SneakTime=1..}] if score @s in_combat > @s Tact run scoreboard players operation @s in_combat -= @s Tact
execute as @a[scores={SneakTime=1..}] if score @s in_combat > @s Tact run scoreboard players operation @s in_combat -= @s Tact
execute as @a[scores={SneakTime=1..,in_combat=1..}] if score @s in_combat <= @s Tact run scoreboard players set @s in_combat 0

scoreboard players set @a[scores={used_firework_rocket=1..}] used_firework_rocket 0

# radiation
function echoes:player/radiation
    # i figure this can be post function, because nothing else really references radiation, so all its effects can be calculated and applied at the same time
        # this also leaves the most room for additional resistance and stat changes

# aegis nonsense
tag @a[tag=AegisApplied] remove AegisApplied

scoreboard players enable @a aegis_theme
function echoes:player/aegis/_main
execute as @a[scores={sse.difficulty.default_aegis_amplifier=-1..}] run scoreboard players operation @s aegis_amplifier_max = @s sse.difficulty.default_aegis_amplifier
# scoreboard players set @a[scores={Dimension=4}] aegis_amplifier_max -1

# execute as @a run attribute @s armor modifier add echoes.armor_reduction -0.5 add_multiplied_total
    # ArmorType doesn't actually take your armor points value into account so this is fine to keep w/out further modification to like encumbrance


# ichor damage
        # if anything grants ichor damage immunity, put it here, before the below function
execute as @s[scores={sse.oath=3}] run scoreboard players operation @s ichor_damage /= #const.2 value

execute as @a[scores={ichor_damage=1..}] run function parse:score_unended {score:ichor_damage,function:"echoes:player/combat/ichor_damage"}
scoreboard players set @a ichor_damage 0

advancement revoke @a only echoes:using_clock