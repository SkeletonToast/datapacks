function ss_species:_tick
function ss_classes:_tick
function ss_traits:_tick
function ss_abilities:_tick
# function ss_statuses:_tick
function ss_stagger:_tick

function ss_library:quick_destroy
function ss_library:generic_scores
function ss_library:deathcoords
function ss_core:wayfinder

    # execute as @a[name="SkeletonToast",nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["devstone"]}}}]}] run function ss_core:devstone
    # execute as @a[name="SkeletonToast",scores={SoftRestOrRespawn=1}] run function ss_core:give_devstone
    # execute as @a[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{Tags:["devstone"]}}}],SelectedItem:{components:{"minecraft:custom_data":{Tags:["devstone"]}}}}] unless entity @s[name="SkeletonToast"] run function ss_core:devstone