function oakfall:_fixes

function ss_lib:_pre_function
function ss_statuses:_pre_function
function ss_traits:_pre_function

# gamerules
execute as @a at @s run gamerule keepInventory true
    # this will (hopefully) make it so that, even on servers, keepInventory becomes true in all dimensions

# attribute reset
execute as @a[scores={SoftTimeSinceDeath=1}] run function ss_lib:attribute_reset

# score / tag resets

    # encumbrance score reset
    scoreboard players set @a of_encumbrance 0
    scoreboard players set @a of_encumbrance_armor 0
    scoreboard players set @a of_encumbrance_items 0

    # setting scores
    execute as @a[scores={Dimension=..2},nbt={Dimension:"oakfall:oakfall"}] run scoreboard players set @s Dimension 3
    scoreboard players set @a of_biome 0
    scoreboard players set @a[scores={of_biome=0},predicate=oakfall:in_stony_biome] of_biome 7
    scoreboard players set @a[scores={of_biome=0},predicate=oakfall:in_plains] of_biome 6
    scoreboard players set @a[scores={of_biome=0},predicate=oakfall:in_cold_biome] of_biome 3
    scoreboard players set @a[scores={of_biome=0},predicate=oakfall:in_ocean] of_biome 5
    scoreboard players set @a[scores={of_biome=0},predicate=oakfall:in_forest] of_biome 4
    scoreboard players set @a[scores={of_biome=0},predicate=oakfall:in_caves] of_biome 2
    scoreboard players set @a[scores={of_biome=0},predicate=oakfall:in_arid_biome] of_biome 1

# overworld stuff
    # here is where you'll put something that lets people go through the overworld, if possible
        execute as @a unless entity @s[scores={of_overworld_eligible=..-1}] run scoreboard players set @s of_overworld_eligible 0
        execute as @a[scores={SoftRestOrRespawn=1}] run scoreboard players set @s of_overworld_eligible 0
        scoreboard players set @a[gamemode=creative] of_overworld_eligible 1
        scoreboard players set @a[gamemode=spectator] of_overworld_eligible 1

    # teleportation to fog dimension for non-overworld-eligible players
    execute as @a[scores={Dimension=0,of_overworld_eligible=0}] at @s in oakfall:oakfall run tp @s ~ ~ ~

# tick
function of_characters:_tick

    # villages
    execute as @a[predicate=oakfall:in_village,tag=!InVillage] run function oakfall:in_village
    execute at @e[type=minecraft:interaction,tag=Campfire,tag=InVillage] as @a[distance=..30,tag=!InVillage] run function oakfall:in_village

    execute as @e[type=minecraft:interaction,tag=Campfire,tag=InVillage] at @s unless entity @a[distance=..30] run tag @s remove InVillage

    # basic tick
    function oakfall:campfires/main
    function oakfall:campfires/lanterns
    function oakfall:fear
    function oakfall:temperature
    function oakfall:bravery
    function oakfall:nether/main
    execute as @a[gamemode=!creative,gamemode=!spectator] run function oakfall:encumbrance

    function of_statuses:_tick

    execute as @a[scores={Dimension=3}] run function oakfall:ambient_particles
    
    execute as @a[scores={RestOrRespawn=1}] run function oakfall:recipe_give

    function of_items:_tick

    function oakfall:update

    # sleeping
    execute as @a[scores={of_sleep=0}] run scoreboard players set @s of_sleep_timer 0
    execute as @a[scores={of_sleep=1}] run scoreboard players add @s of_sleep_timer 1
    execute as @a[scores={of_sleep_timer=98..,TimeSinceRest=2,DayTime=13000..23999}] run time set 0
    execute as @a[scores={TimeSinceRest=2}] run scoreboard players set @s of_sleep 0

    # day cycle
    execute if predicate {"condition":"minecraft:random_chance","chance":0.5} run time add 23999
    # execute as @r[scores={DayTime=13000..}] run time add 1t
    # execute as @a[limit=5,scores={DayTime=13000..}] if predicate {"condition":"minecraft:random_chance","chance":0.2} run time add 23999
    # execute as @r[scores={DayTime=..12999}] if predicate ss_lib:random_50_percent run time add 23999

    function oakfall:monsters/_main

    # other pack tick
    function ss_armory:_tick
    function ss_traits:_tick
    function ss_statuses:_tick

    # death coords
    function ss_lib:deathcoords

# post func
function ss_traits:_post_function
function ss_statuses:_post_function
function ss_lib:_post_function

# village tag remove
tag @a[tag=InSanctuary] remove InSanctuary
tag @a[tag=InVillage] remove InVillage

# just a note: for everything that uses armor values, you'll have to change Parrying if it's added to this pack.
    # Parrying briefly adds an armor bonus to help decrease damage taken, so it'd cause issues if it was part of this pack.

# throwing down some cool sounds
    # execute on origin at @s anchored eyes run playsound minecraft:entity.firework_rocket.twinkle player @a ^ ^ ^5 0.5 2
        # maybe use this as part of the camera sounds?? ^^

    # minecraft:entity.zombie.attack_iron_door
    # minecraft:block.anvil.place
        # these are really cool metal sounds so save them for something cool