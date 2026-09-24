# two handed
execute as @a[scores={HasPropertiedWeapon=1..,ItemSelected=1,ItemOffhand=0}] \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{properties:{properties:["two_handed"]}}}] run function ss_armory:properties/two_handed
execute as @a[scores={HasPropertiedWeapon=1..,ItemSelected=1,ItemOffhand=0}] \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{properties:{two_handed:true}}}] run function ss_armory:properties/two_handed

# studded grip
execute as @a[scores={HasPropertiedWeapon=1..,ItemSelected=1,disarmed_timer=1..}] \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{properties:{properties:["studded_grip"]}}}] run function ss_armory:properties/studded_grip
execute as @a[scores={HasPropertiedWeapon=1..,ItemSelected=1,disarmed_timer=1..}] \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{properties:{studded_grip:true}}}] run function ss_armory:properties/studded_grip

# quick draw
execute as @a[scores={HasPropertiedWeapon=1..,ItemSelected=1,AttackSpeedCapTimer=0}] \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{properties:{properties:["quick_draw"]}}}] run function ss_armory:properties/quick_draw

# visceral
execute at @a[scores={HasPropertiedWeapon=1..,ItemSelected=1,DamageDealt=1..}] as @e[type=!#ss_lib:not_alive,distance=..10] at @s on attacker \
    if items entity @s[scores={HasPropertiedWeapon=1..,ItemSelected=1,DamageDealt=1..}] weapon.mainhand *[minecraft:custom_data~{weapon:{properties:{visceral:true}}}] \
    as @n[distance=0] unless entity @s[scores={bleeding_timer=200..}] run function ss_armory:properties/visceral

# guns
execute as @a[scores={WeaponType=9}] run function ss_armory:properties/guns/_main
execute as @a unless score @s WeaponType matches 9 if items entity @s weapon.offhand *[minecraft:custom_data~{weapon:{gun:{}}}] run function ss_armory:properties/guns/_main


# longbow
# execute as @a[scores={WeaponType=7}] \
#     if items entity @s weapon.mainhand bow[minecraft:custom_data~{weapon:{properties:{properties:["longbow"]}}}] run function ss_armory:properties/longbow

# fuck you mojang why did you remove arrow gravity modification

# composite bow
execute as @a[scores={WeaponType=7},predicate=ss_armory:has_arrow] \
    if items entity @s weapon.mainhand bow[minecraft:custom_data~{weapon:{properties:{properties:["composite_bow"]}}}] run function ss_armory:properties/composite_bow
execute as @a[scores={WeaponType=7},predicate=ss_armory:has_arrow] \
    if items entity @s weapon.offhand bow[minecraft:custom_data~{weapon:{properties:{properties:["composite_bow"]}}}] \
    unless items entity @s weapon.mainhand bow run function ss_armory:properties/composite_bow
execute as @a[scores={WeaponType=7},gamemode=creative] \
    if items entity @s weapon.mainhand bow[minecraft:custom_data~{weapon:{properties:{properties:["composite_bow"]}}}] run function ss_armory:properties/composite_bow