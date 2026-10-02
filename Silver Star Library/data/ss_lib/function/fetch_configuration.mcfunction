# "using" scores
function ss_lib:fetch/using_bow {s:"@a"}
function ss_lib:fetch/using_shield {s:"@a"}
    # For most Silver Star datapacks, these are required to be run every tick.
    # Delete them or comment them out if your datapack does not require this.
        # It is strongly recommended that you leave these untouched if you have other Silver Star packs installed.

function ss_lib:fetch/on_ground {s:"@a"}

# movement - requires run every tick
function ss_lib:fetch/fall_flying {s:"@a"}

execute as @a[scores={SneakTime=1..}] unless entity @s[predicate=ss_lib:is/sneaking] run scoreboard players set @s SneakTime 0
function ss_lib:fetch/is_sprinting {s:"@a"}

# in_water
scoreboard players set @a InWater -1
function ss_lib:fetch/in_water {s:"@a"}
    # This is run every tick because of the "Wet" status in Silver Star Statuses. It adds a visual particle effect when the player is
    # wet, like when they just got out of water, or out of the rain. This can be commented out if you don't care about the Wet effect,
    # thought it might have some other unintended consequences.

# fire
scoreboard players set @a Fire -1
    # Fire is unique in that, usually, entities (or at least players) will have a "fire" data value of -20.
    # Although a value of -1 is possible naturally, it's unlikely for fetch to catch that exactly, and all it means is that
    # fetch/fire might be run more than once if the entity has a value of -1.

execute store result score $day_time value run time query minecraft:day