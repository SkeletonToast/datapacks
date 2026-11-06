execute if entity @a[scores={HasSpecies=1}] run function ss_species:_post_function
execute if entity @a[scores={HasClass=1}] run function ss_classes:_post_function
execute if entity @a[scores={HasTrait=1}] run function ss_traits:_post_function
execute if entity @a[scores={HasAbility=1}] run function ss_abilities:_post_function
# execute if entity @e[type=!#ss_library:not_alive,scores={HasStatus=1}] run function ss_statuses:_post_function

tag @a[tag=RelicUser] remove RelicUser
tag @a[tag=Staggerable] remove Staggerable