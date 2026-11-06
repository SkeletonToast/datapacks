execute if entity @a[scores={HasSpecies=1}] run function ss_species:_pre_function
execute if entity @a[scores={HasClass=1}] run function ss_classes:_pre_function
execute if entity @a[scores={HasTrait=1}] run function ss_traits:_pre_function
execute if entity @a[scores={HasAbility=1}] run function ss_abilities:_pre_function
# function ss_statuses:_pre_function

# used for running pre-functions one last time, even if nobody fits the criteria of the respective pre-function
function ss_core:_has_score

execute as @a[scores={SoftTimeSinceDeath=1}] run function ss_library:attribute_reset