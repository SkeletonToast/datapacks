# proficiency
execute as @a run attribute @s attack_damage modifier remove proficiency_attack_damage
execute as @a run attribute @s attack_speed modifier remove proficiency_attack_speed
execute as @a[tag=InCombat] run function echoes:player/combat/proficiency/_main

execute as @a[scores={WeaponType=1..6,proficiency=1..},tag=InCombat] run function parse:score \
        {"score":"proficiency","prepend":"","append":".","prepend_position":0,"append_position":4,"function":"echoes:player/combat/proficiency/apply_damage"}

execute as @a[scores={WeaponType=0,proficiency=1..},tag=InCombat] run function ss_lib:fetch/item_selected {"s":"@s"}
execute as @a[scores={ItemSelected=0,proficiency=1..},tag=InCombat] run function parse:score \
        {"score":"proficiency","prepend":"","append":".","prepend_position":0,"append_position":4,"function":"echoes:player/combat/proficiency/apply_damage"}

execute as @a[scores={WeaponType=1..6,proficiency=1..},tag=InCombat,tag=Dexterity_feat_2] run \
        function round:100_reduce {"score":"proficiency_dex"}
execute as @a[scores={WeaponType=1..6,proficiency=1..},tag=InCombat,tag=Dexterity_feat_2] run \
        function round:10_reduce {"score":"proficiency_dex"}
execute as @a[scores={WeaponType=1..6,proficiency=1..},tag=InCombat,tag=Dexterity_feat_2] run function parse:score \
        {"score":"proficiency_dex","prepend":"","append":".","prepend_position":0,"append_position":2,"function":"echoes:player/combat/proficiency/apply_speed"}

scoreboard players remove @a[scores={proficiency_temp=1..}] proficiency_temp 100
scoreboard players set @a[scores={proficiency_temp=..-1}] proficiency_temp 0

scoreboard players set @a[scores={in_combat=1..100}] in_combat 0
scoreboard players remove @a[scores={in_combat=101..}] in_combat 100
execute as @a[scores={SneakTime=1..}] if score @s in_combat > @s Tact run scoreboard players operation @s in_combat -= @s Tact
execute as @a[scores={SneakTime=1..}] if score @s in_combat > @s Tact run scoreboard players operation @s in_combat -= @s Tact
execute as @a[scores={SneakTime=1..,in_combat=1..}] if score @s in_combat <= @s Tact run scoreboard players set @s in_combat 0

scoreboard players set @a[scores={used_firework_rocket=1..}] used_firework_rocket 0

# aegis nonsense
tag @a[tag=AegisApplied] remove AegisApplied

scoreboard players set @a[scores={EchoDifficulty=1..4}] aegis_amplifier_max 4
scoreboard players set @a[scores={EchoDifficulty=5}] aegis_amplifier_max 9
# scoreboard players set @a[scores={Dimension=4}] aegis_amplifier_max -1

# ichor damage
        # if anything grants ichor damage immunity, put it here

execute as @a[scores={ichor_damage=1..}] run function parse:score_unended {"score":"ichor_damage","function":"echoes:player/combat/ichor_damage"}
scoreboard players set @a ichor_damage 0