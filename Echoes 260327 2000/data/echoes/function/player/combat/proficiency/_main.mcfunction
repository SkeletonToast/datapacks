scoreboard players set @s proficiency_str 0
scoreboard players set @s proficiency_dex 0
scoreboard players set @s proficiency_tact 0
scoreboard players set @s proficiency_soul 0
scoreboard players set @s proficiency_mind 0

# these are really just here for debugging
scoreboard players set @s prof_str_unadj 0
scoreboard players set @s prof_dex_unadj 0
scoreboard players set @s prof_tact_unadj 0
scoreboard players set @s prof_soul_unadj 0
scoreboard players set @s prof_mind_unadj 0

function ss_lib:fetch/weapon {"s":"@s"}
# function ss_lib:fetch/item_selected {"s":"@s"}
    # not necessary because weapon fetches selected item

# note 8/6/2025 - All proficiencies have been increased by 50%. I'm still trying to figure out the balance between Mind and physical builds

# swords
execute as @s[scores={WeaponType=1}] run function echoes:player/combat/proficiency/profile/balanced

# axes
execute as @s[scores={WeaponType=2}] run function echoes:player/combat/proficiency/profile/heavy_1

# spears
execute as @s[scores={WeaponType=3}] run function echoes:player/combat/proficiency/profile/agile_1

# scythes
execute as @s[scores={WeaponType=4}] run function echoes:player/combat/proficiency/profile/agile_2

# tridents
execute as @s[scores={WeaponType=5}] run function echoes:player/combat/proficiency/profile/adaptive_1

        # picks
        # scoreboard players add @s[scores={WeaponType=5}] proficiency_str 105
        # scoreboard players add @s[scores={WeaponType=5}] proficiency_dex 60

# maces
execute as @s[scores={WeaponType=6}] run function echoes:player/combat/proficiency/profile/heavy_2

# whips
execute as @s[scores={WeaponType=10}] run function echoes:player/combat/proficiency/profile/agile_3

# guns
scoreboard players add @s[scores={WeaponType=9}] proficiency_str 0
scoreboard players add @s[scores={WeaponType=9}] proficiency_dex 30
scoreboard players add @s[scores={WeaponType=9}] proficiency_tact 120

# unarmed
execute as @s[scores={ItemSelected=0}] run function echoes:player/combat/proficiency/profile/balanced_weak

# golden weapons
    execute as @s[scores={WeaponType=1..4}] if items entity @s weapon.mainhand #echoes:golden_weapon run scoreboard players remove @s proficiency_str 10
    execute as @s[scores={WeaponType=1..4}] if items entity @s weapon.mainhand #echoes:golden_weapon run scoreboard players remove @s proficiency_dex 10
    execute as @s[scores={WeaponType=1..4}] if items entity @s weapon.mainhand #echoes:golden_weapon run scoreboard players add @s proficiency_soul 40

# copper weapons
    execute as @s[scores={WeaponType=1..4}] if items entity @s weapon.mainhand #echoes:copper_weapon run scoreboard players remove @s proficiency_str 10
    execute as @s[scores={WeaponType=1..4}] if items entity @s weapon.mainhand #echoes:copper_weapon run scoreboard players remove @s proficiency_dex 10
    execute as @s[scores={WeaponType=1..4}] if items entity @s weapon.mainhand #echoes:copper_weapon run scoreboard players add @s proficiency_mind 20

# netherite weapons
    execute as @s[scores={WeaponType=1..4}] if items entity @s weapon.mainhand #echoes:netherite_weapon run scoreboard players add @s proficiency_str 10
    execute as @s[scores={WeaponType=1..4}] if items entity @s weapon.mainhand #echoes:netherite_weapon run scoreboard players remove @s proficiency_dex 10

# mounted - tact feat 2
execute as @s[tag=Tact_feat_2] on vehicle on passengers if entity @s[tag=Tact_feat_2] run scoreboard players add @s proficiency_tact 50
execute as @s[tag=Tact_feat_2,scores={FallFlying=1}] run scoreboard players add @s proficiency_tact 50

# adaptability - tact feat 3
execute as @s[scores={Tact=50..69},tag=Tact_feat_3] run scoreboard players operation @s generic_a = @s Tact
    execute as @s[scores={Tact=50..69},tag=Tact_feat_3] run scoreboard players operation @s proficiency_tact += @s generic_a
scoreboard players add @s[scores={Tact=70..},tag=Tact_feat_3] proficiency_tact 35

# style enchants
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"#echoes:exclusive_set/style"}]] run function echoes:player/combat/proficiency/style/enchantments

# two handing - strength/dexterity feat 2
execute as @s[tag=Strength_feat_2,tag=!Dexterity_feat_2] unless items entity @s weapon.offhand * run function echoes:player/combat/proficiency/two_handing {"stat":"_str"}
execute as @s[tag=Dexterity_feat_2,tag=!Strength_feat_2] unless items entity @s weapon.offhand * run function echoes:player/combat/proficiency/two_handing {"stat":"_dex"}

# mind additional proficiency
scoreboard players operation @s[scores={xp_level=..200}] proficiency_mind += @s xp_level
scoreboard players add @s[scores={xp_level=201..}] proficiency_mind 200

# unadjusted score storage
scoreboard players operation @s prof_str_unadj = @s proficiency_str
scoreboard players operation @s prof_dex_unadj = @s proficiency_dex
scoreboard players operation @s prof_tact_unadj = @s proficiency_tact
scoreboard players operation @s prof_soul_unadj = @s proficiency_soul
scoreboard players operation @s prof_mind_unadj = @s proficiency_mind

# linear
execute unless score $incrementalProficiencyScaling true matches 1 run function echoes:player/combat/proficiency/linear

# incremental
    # execute as @s[scores={proficiency_str=1..}] if score $incrementalProficiencyScaling true matches 1 run \
    #     function echoes:player/combat/proficiency/incremental {"stat":"Strength","statabbr":"str"}
    # execute as @s[scores={proficiency_dex=1..}] if score $incrementalProficiencyScaling true matches 1 run \
    #     function echoes:player/combat/proficiency/incremental {"stat":"Dexterity","statabbr":"dex"}
    # execute as @s[scores={proficiency_tact=1..}] if score $incrementalProficiencyScaling true matches 1 run \
    #     function echoes:player/combat/proficiency/incremental {"stat":"Tact","statabbr":"tact"}
    # execute as @s[scores={proficiency_soul=1..}] if score $incrementalProficiencyScaling true matches 1 run \
    #     function echoes:player/combat/proficiency/incremental {"stat":"Soul","statabbr":"soul"}
    # execute as @s[scores={proficiency_mind=1..}] if score $incrementalProficiencyScaling true matches 1 run \
    #     function echoes:player/combat/proficiency/incremental {"stat":"Mind","statabbr":"mind"}

# actual assignment
scoreboard players operation @s proficiency = @s proficiency_temp
scoreboard players operation @s proficiency += @s proficiency_str
scoreboard players operation @s proficiency += @s proficiency_dex
scoreboard players operation @s proficiency += @s proficiency_tact
scoreboard players operation @s proficiency += @s proficiency_soul
scoreboard players operation @s proficiency += @s proficiency_mind

# str AND dex two-handing
execute as @s[tag=Strength_feat_2,tag=Dexterity_feat_2] unless items entity @s weapon.offhand * run function echoes:player/combat/proficiency/two_handing {"stat":""}
# execute as @s[tag=Strength_feat_2,tag=Dexterity_feat_2] unless items entity @s weapon.offhand * run function echoes:player/combat/proficiency/two_handing {"stat":"_dex"}

# hungry damage reduction
scoreboard players set @s generic_a 18
scoreboard players operation @s generic_a -= @s Food
    scoreboard players operation @s generic_b = @s Vitality
    scoreboard players operation @s generic_b /= @s 7
scoreboard players operation @s generic_a -= @s generic_b
scoreboard players operation @s generic_a *= @s 10
    scoreboard players operation @s generic_a *= @s 10

execute if score $hungryDamageReduction true matches 1 run scoreboard players operation @s[scores={generic_a=1..}] proficiency -= @s generic_a

scoreboard players operation @s gun_base_damage = @s proficiency_dex
scoreboard players operation @s gun_base_damage += @s proficiency_tact
function math:round/100_reduce {"score":"gun_base_damage"}

# remember proficiency application is in post function!