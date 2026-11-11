# armor
    # execute if items entity @s weapon.* shield run scoreboard players add @s encumbrance_armor 3
    # scoreboard players add @s[scores={UsingShield=1..}] encumbrance_armor 3
function ss_lib:fetch/weapon {s:"@a"}
function ss_lib:fetch/armor {s:"@a"}

execute as @a run attribute @s movement_speed modifier remove encumbrance_movement_speed
execute as @a run attribute @s jump_strength modifier remove encumbrance_jump_strength
execute as @a run attribute @s water_movement_efficiency modifier remove encumbrance_water_movement_efficiency

execute as @a[scores={ArmorWeight=1..}] run scoreboard players operation @s encumbrance_armor += @s ArmorWeight
# execute as @a[scores={ArmorWeight=1..},tag=InCombat] run scoreboard players operation @s encumbrance_armor += @s ArmorWeight

# weapon weight
scoreboard players add @a[scores={WeaponWeight=2}] encumbrance_items 20
scoreboard players add @a[scores={WeaponWeight=3}] encumbrance_items 30
scoreboard players add @a[scores={WeaponWeight=4}] encumbrance_items 50
scoreboard players add @a[scores={WeaponWeight=5..}] encumbrance_items 90

    # offhand
    execute as @a[scores={ItemOffhand=1}] if items entity @s weapon.offhand #echoes:offhand_encumbering run scoreboard players add @s encumbrance_items 10

# fear
# scoreboard players add @s[scores={fear=40000..}] encumbrance 10
# scoreboard players add @s[scores={fear=70000..}] encumbrance 20

# apply
execute as @a[scores={encumbrance_items=2..},tag=!InCombat] run scoreboard players operation @s encumbrance_items /= #const.2 value

execute as @a[scores={encumbrance_armor=1..}] run scoreboard players operation @s encumbrance += @s encumbrance_armor
execute as @a[scores={encumbrance_items=1..}] run scoreboard players operation @s encumbrance += @s encumbrance_items

    # crutches
    execute as @a[scores={encumbrance=1..}] if items entity @s weapon.* *[custom_data~{crutch:1b}] run scoreboard players remove @s encumbrance 5

# adjustments
execute as @a if score @s encumbrance_reduction < @s Strength run scoreboard players operation @s encumbrance_reduction = @s Strength
execute as @a[scores={encumbrance=1..}] run scoreboard players operation @s encumbrance -= @s encumbrance_reduction
execute as @a run scoreboard players operation @s encumbrance -= @s Food

execute as @a run scoreboard players operation @s encumbrance_unadjusted = @s encumbrance

# handicaps
scoreboard players remove @a[tag=!InCombat,scores={sse.difficulty=..3}] encumbrance 10
# execute as @a[scores={sse.Hunger=0,encumbrance=2..},tag=!InCombat] run scoreboard players operation @s encumbrance /= #const.2 value

# 50+ strength encumbrance halving
execute as @a[tag=Strength_feat_3] run scoreboard players operation @s encumbrance /= #const.2 value

# other calculations
execute as @a run function math:percentage_score {base_score:encumbrance,percentage_score:sse.difficulty.encumbrance_multiplier}
    # applies the encumbrance multiplier. this is intentionally after the adjustments

execute as @a run scoreboard players operation @s encumbrance_jump = @s encumbrance
execute as @a run scoreboard players operation @s encumbrance_jump /= #const.2 value
scoreboard players set @a[scores={encumbrance=91..}] encumbrance_jump 100
scoreboard players set @a[scores={encumbrance=91..}] encumbrance 90

execute as @a if score @s encumbrance <= @s encumbrance_hard run scoreboard players operation @s encumbrance = @s encumbrance_hard

execute if score $sse.gamerule.creative_encumbrance true matches 0 run scoreboard players set @a[gamemode=creative] encumbrance 0
scoreboard players set @a[gamemode=spectator] encumbrance 0
    
execute as @a[scores={encumbrance=1..}] run function parse:decimal {score:encumbrance,scale:-0.01,function:"echoes:player/encumbrance/speed_apply"}
execute as @a[scores={encumbrance=1..}] run function parse:decimal {score:encumbrance,scale:-0.01,function:"echoes:player/encumbrance/swim_apply"}
execute as @a[scores={encumbrance_jump=1..,SneakTime=0}] run function parse:decimal {score:encumbrance_jump,scale:-0.01,function:"echoes:player/encumbrance/jump_apply"}

# execute as @a run scoreboard players operation @s DexterityModifier -= @s encumbrance_jump

execute as @a[scores={SneakTime=10..}] run attribute @s jump_strength modifier remove encumbrance_jump_strength