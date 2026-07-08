# replace all "@a" or "@e" in fetch files with macro selectors.

# health
scoreboard players set @a Health 0
scoreboard players set @a TotalHealth 0
scoreboard players set @a Absorption 0
scoreboard players set @a BaseMaxHealth 0

# damage
execute as @a run scoreboard players operation @s DamageTaken += @s DamageAbsorbed

execute as @a run scoreboard players operation @s DamageDealt += @s DamageDealtAbsorbed
execute as @a run scoreboard players operation @s DamageDealt += @s DamageDealtResisted

# attributes
execute as @a store result score @s AttackDamage run attribute @s attack_damage get

execute as @a store result score @s ArmorToughness run attribute @s armor_toughness get

# selected items
scoreboard players set @a ItemSelected -1
scoreboard players set @a ItemOffhand 0

# weapon & armor types / weights
scoreboard players set @a WeaponType 0
scoreboard players set @a WeaponWeight 0

scoreboard players set @a ArmorType 0
scoreboard players set @a HelmetType 0
scoreboard players set @a ChestplateType 0
scoreboard players set @a LeggingsType 0
scoreboard players set @a BootsType 0

scoreboard players set @a Armorless 0

scoreboard players set @a OnGround 0
scoreboard players set @a[nbt={OnGround:1b}] OnGround 1

# fetch functions
function ss_lib:fetch_configuration

# rest / respawn
scoreboard players add @a SoftTimeSinceDeath 1
scoreboard players add @a SoftTimeSinceRest 1
scoreboard players add @a SoftRestOrRespawn 1
scoreboard players set @a[scores={TimeSinceDeath=0}] SoftTimeSinceDeath 0
scoreboard players set @a[scores={TimeSinceRest=0}] SoftTimeSinceRest 0
scoreboard players set @a[scores={RestOrRespawn=0}] SoftRestOrRespawn 0

scoreboard players add @a[scores={TimeSinceDeath=1..,TimeSinceRest=1..}] RestOrRespawn 1
scoreboard players set @a[scores={TimeSinceDeath=0}] RestOrRespawn 0
scoreboard players set @a[scores={TimeSinceRest=0}] RestOrRespawn 0

scoreboard players set @a[scores={SoftTimeSinceDeath=0}] SoftRestOrRespawn 0
scoreboard players set @a[scores={SoftTimeSinceRest=0}] SoftRestOrRespawn 0

scoreboard players add @a[scores={TimeSinceRest=0}] SleepingTime 1
scoreboard players set @a[scores={TimeSinceRest=1..}] SleepingTime 0

scoreboard players add @a SoftGameTime 1

# this can be used to remove aggro from any hostile mob.
# assigning the "Pacified" tag will prevent them from following whoever they're angry at,
# but if that entity is still in range, they'll likely re-target it.
execute as @e[tag=Pacified] run attribute @s follow_range modifier remove pacified_follow_range
tag @e[tag=Pacified] remove Pacified
execute as @e[tag=Extinguished] run attribute @s burning_time modifier remove extinguished_burning_time
tag @e[tag=Extinguished] remove Extinguished

# fall damage negation attribute is just manually added where necessary
execute as @a[tag=FallDamageNegated] run attribute @s fall_damage_multiplier modifier remove fall_damage_immunity
tag @a[tag=FallDamageNegated] remove FallDamageNegated
    # this can be used to prevent fall damage. assigning the fall_damage_immunity attribute, which sets your fall_damage_multiplier
    # to zero, will prevent fall damage, but will be removed when the player touches the ground.

scoreboard players add @e Age 1

function ss_lib:generic_scores