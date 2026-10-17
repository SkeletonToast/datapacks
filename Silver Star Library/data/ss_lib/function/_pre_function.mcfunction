# execute if data storage silver_star_library pre_function.triggered run return fail
# data modify storage silver_star_library pre_function.triggered set value true

execute as @a[scores={GameTime=1}] run function ss_lib:first_join

# health
scoreboard players set @a Health -1
scoreboard players set @a TotalHealth -1
scoreboard players set @a Absorption -1
scoreboard players set @a BaseMaxHealth -1
scoreboard players set @a MaxHealth -1

# damage
execute as @a run scoreboard players operation @s DamageTaken += @s DamageAbsorbed

execute as @a run scoreboard players operation @s DamageDealt += @s DamageDealtAbsorbed
execute as @a run scoreboard players operation @s DamageDealt += @s DamageDealtResisted

# attributes
scoreboard players set @a AttackDamage -1
scoreboard players set @a AttackSpeed -1
scoreboard players set @a ssl.fetch.attack_damage.scale 0
scoreboard players set @a ssl.fetch.attack_speed.scale 0

# selected items
scoreboard players set @a ItemSelected -1
scoreboard players set @a ItemOffhand -1

# weapon & armor types / weights
scoreboard players set @a WeaponType -1
scoreboard players set @a WeaponWeight -1
scoreboard players set @a WeaponMaterial -1

scoreboard players set @a ArmorType -1
scoreboard players set @a HelmetType -1
scoreboard players set @a ChestplateType -1
scoreboard players set @a LeggingsType -1
scoreboard players set @a BootsType -1

scoreboard players set @a Armorless -1
scoreboard players set @a ArmorToughness -1

scoreboard players set @a OnGround -1
scoreboard players set @a FallFlying -1

scoreboard players set @a InWater -1
    # Most of these scores are set to -1. OnGround and FallFlying are untouched because, by default, they're run every tick.
    # See ss_lib:fetch_configuration (linked below) to change this.
        # Be aware: If any other Silver Star datapacks are installed, they will likely lose some functionality if anything in fetch_configuration is changed.

# fire
scoreboard players set @a Fire -1
    # Fire is unique in that, usually, entities (or at least players) will have a "fire" data value of -20.
    # Although a value of -1 is possible naturally, it's unlikely for fetch to catch that exactly, and all it means is that
    # fetch/fire might be run more than once if the entity has a value of -1.

# fetch functions
function ss_lib:fetch_configuration

execute as @a[scores={SneakTime=1..}] unless entity @s[predicate=ss_lib:is/sneaking] run scoreboard players set @s SneakTime 0

execute store result score $day_time value run time query minecraft:day

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

scoreboard players add @a GameTime 1
scoreboard players add @a SoftGameTime 1

# this can be used to remove aggro from any hostile mob.
# assigning the "ssl.action.pacify" tag will prevent them from following whoever they're angry at,
# but if that entity is still in range, they'll likely re-target it.
execute as @e[tag=ssl.action.pacify] run attribute @s follow_range modifier remove pacified_follow_range
tag @e[tag=ssl.action.pacify] remove ssl.action.pacify
execute as @e[tag=ssl.action.extinguish] run attribute @s burning_time modifier remove extinguished_burning_time
tag @e[tag=ssl.action.extinguish] remove ssl.action.extinguish

# fall damage negation attribute is just manually added where necessary
execute as @a[tag=ssl.action.negate_fall_damage] run attribute @s fall_damage_multiplier modifier remove fall_damage_immunity
tag @a[tag=ssl.action.negate_fall_damage] remove ssl.action.negate_fall_damage
    # this can be used to prevent fall damage. assigning the fall_damage_immunity attribute, which sets your fall_damage_multiplier
    # to zero, will prevent fall damage, but will be removed when the player touches the ground.

scoreboard players add @e Age 1

function elixir:_pre_function