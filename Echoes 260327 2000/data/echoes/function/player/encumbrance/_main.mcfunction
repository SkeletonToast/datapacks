# armor
    # execute if items entity @s weapon.* shield run scoreboard players add @s encumbrance_armor 3
    # scoreboard players add @s[scores={UsingShield=1..}] encumbrance_armor 3
function ss_lib:fetch/weapon {"s":"@a"}
function ss_lib:fetch/armor {"s":"@a"}

execute as @a run attribute @s movement_speed modifier remove encumbrance_movement_speed
execute as @a run attribute @s jump_strength modifier remove encumbrance_jump_strength
execute as @a run attribute @s water_movement_efficiency modifier remove encumbrance_water_movement_efficiency

execute as @a[scores={ArmorWeight=1..}] run scoreboard players operation @s encumbrance_armor += @s ArmorWeight
execute as @a[scores={ArmorWeight=1..},tag=InCombat] run scoreboard players operation @s encumbrance_armor += @s ArmorWeight

# weapon weight
scoreboard players add @a[scores={WeaponWeight=2}] encumbrance_items 20
scoreboard players add @a[scores={WeaponWeight=3}] encumbrance_items 30
scoreboard players add @a[scores={WeaponWeight=4}] encumbrance_items 50
scoreboard players add @a[scores={WeaponWeight=5..}] encumbrance_items 90

    # massive weapon in hotbar
    execute if items entity @s hotbar.* *[minecraft:custom_data~{weapon:{properties:{massive:true}}}] run scoreboard players add @s encumbrance_items 12

    # offhand
    execute as @a[scores={ItemOffhand=1}] if items entity @s weapon.offhand #echoes:offhand_encumbering run scoreboard players add @s encumbrance_items 10

# fear
# scoreboard players add @s[scores={fear=40000..}] encumbrance 10
# scoreboard players add @s[scores={fear=70000..}] encumbrance 20

# apply
execute as @a[scores={encumbrance_items=2..,EchoDifficulty=2..},tag=!InCombat] run scoreboard players operation @s encumbrance_items /= @s 2

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
execute as @a[tag=!InCombat,scores={EchoDifficulty=2..}] unless entity @s[scores={EchoDifficulty=5..}] run scoreboard players remove @s encumbrance 10
# execute as @a[scores={Food=20,encumbrance=2..},tag=!InCombat] run scoreboard players operation @s encumbrance /= @s 2

# 50+ strength encumbrance halving
execute as @a[tag=Strength_feat_3] run scoreboard players operation @s encumbrance /= @s 2

# other calculations
execute as @a run scoreboard players operation @s encumbrance_half = @s encumbrance
execute as @a run scoreboard players operation @s encumbrance_half /= @s 2
scoreboard players set @a[scores={encumbrance_half=70..}] encumbrance_half 100
    # this is 100 because it's meant to fully disable jumping past 140 encumbrance
scoreboard players set @a[scores={encumbrance=91..}] encumbrance_half 100
scoreboard players set @a[scores={encumbrance=91..}] encumbrance 90

execute as @a if score @s encumbrance <= @s encumbrance_hard run scoreboard players operation @s encumbrance = @s encumbrance_hard

execute if score $creativeEncumbrance true matches 0 run scoreboard players set @a[gamemode=creative] encumbrance 0
execute if score $creativeEncumbrance true matches 0 run scoreboard players set @a[gamemode=spectator] encumbrance 0
    
execute as @a[scores={encumbrance=1..}] run function parse:score \
        {"score":"encumbrance","prepend":"-","append":".","prepend_position":0,"append_position":2,"function":"echoes:player/encumbrance/speed_apply"}
        
execute as @a[scores={encumbrance=1..}] run function parse:score \
        {"score":"encumbrance","prepend":"-","append":".","prepend_position":0,"append_position":2,"function":"echoes:player/encumbrance/swim_apply"}

execute as @a[scores={encumbrance_half=1..,SneakTime=0}] run function parse:score \
        {"score":"encumbrance_half","prepend":"-","append":".","prepend_position":0,"append_position":2,"function":"echoes:player/encumbrance/jump_apply"}

# execute as @a run scoreboard players operation @s DexterityModifier -= @s encumbrance_half

execute as @a[scores={SneakTime=1..}] run attribute @s jump_strength modifier remove encumbrance_jump_strength