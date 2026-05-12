# infinite ammo set
scoreboard players add @a InfinitePowderslingAmmo 0
scoreboard players set @a[gamemode=creative,scores={InfinitePowderslingAmmo=0}] InfinitePowderslingAmmo 1

# gun type
execute as @a[scores={GunType=0}] if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{gun:{type:"bolt_action"}}}] run scoreboard players set @s GunType 1
execute as @a[scores={GunType=0}] if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{gun:{type:"semi_auto"}}}] run scoreboard players set @s GunType 2
execute as @a[scores={GunType=0}] if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{gun:{type:"shotgun"}}}] run scoreboard players set @s GunType 3
execute as @a[scores={GunType=0}] if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{gun:{type:"paintball"}}}] run scoreboard players set @s GunType 4
execute as @a[scores={GunType=0}] if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{gun:{type:"seeker"}}}] run scoreboard players set @s GunType 5
execute as @a[scores={GunType=0}] if items entity @s weapon.offhand *[minecraft:custom_data~{weapon:{gun:{type:"bolt_action"}}}] run scoreboard players set @s GunType 1
execute as @a[scores={GunType=0}] if items entity @s weapon.offhand *[minecraft:custom_data~{weapon:{gun:{type:"semi_auto"}}}] run scoreboard players set @s GunType 2
execute as @a[scores={GunType=0}] if items entity @s weapon.offhand *[minecraft:custom_data~{weapon:{gun:{type:"shotgun"}}}] run scoreboard players set @s GunType 3
execute as @a[scores={GunType=0}] if items entity @s weapon.offhand *[minecraft:custom_data~{weapon:{gun:{type:"paintball"}}}] run scoreboard players set @s GunType 4
execute as @a[scores={GunType=0}] if items entity @s weapon.offhand *[minecraft:custom_data~{weapon:{gun:{type:"seeker"}}}] run scoreboard players set @s GunType 5

# paintball
scoreboard players set @a[scores={GunType=4,InfinitePowderslingAmmo=0}] InfinitePowderslingAmmo 1
execute as @a[scores={GunType=4,PaintballReload=0}] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:charged_projectiles":[{count:1,id:"minecraft:arrow"}]}}]
execute as @a[scores={GunType=4,PaintballType=..0}] run function ss_armory:properties/guns/paintball/color_type

# multishot
scoreboard players add @a MultishotGun 0
scoreboard players set @a MultishotTimer 0

execute as @a[scores={HasPropertiedWeapon=0..,GunType=1..,MultishotGun=..11},advancements={ss_armory:gun/shot_crossbow=true},predicate=ss_armory:has_gun_fuel] \
    if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"minecraft:multishot"}]] \
    run function ss_armory:properties/guns/multishot
execute as @a[scores={HasPropertiedWeapon=0..,GunType=1..,MultishotGun=..11},advancements={ss_armory:gun/shot_crossbow=true},predicate=ss_armory:has_gun_fuel] \
    if items entity @s weapon.offhand *[minecraft:enchantments~[{"enchantments":"minecraft:multishot"}]] \
    run function ss_armory:properties/guns/multishot

scoreboard players set @a[scores={MultishotGun=13..}] MultishotGun 12
execute as @a unless score @s GunType = @s MultishotGunType run scoreboard players set @s MultishotGun 0

execute as @a[scores={MultishotGun=1..}] run scoreboard players operation @s MultishotTimer = @s MultishotGun
    execute as @a[scores={MultishotGun=1..}] run scoreboard players operation @s generic_b = @s 2
    execute as @a[scores={MultishotGun=1..}] run scoreboard players operation @s generic_b *= @s 3
execute as @a[scores={MultishotGun=1..}] run scoreboard players operation @s MultishotTimer %= @s generic_b
advancement grant @a[scores={MultishotGun=1..,MultishotTimer=1}] only ss_armory:gun/shot_crossbow

# fire calls
execute as @a[scores={HasPropertiedWeapon=0..,GunType=1},advancements={ss_armory:gun/shot_crossbow=true}] at @s anchored eyes run function ss_armory:properties/guns/fire {"type":"bolt_action"}
execute as @a[scores={HasPropertiedWeapon=0..,GunType=2},advancements={ss_armory:gun/shot_crossbow=true}] at @s anchored eyes run function ss_armory:properties/guns/fire {"type":"semi_auto"}
execute as @a[scores={HasPropertiedWeapon=0..,GunType=3},advancements={ss_armory:gun/shot_crossbow=true}] at @s anchored eyes run function ss_armory:properties/guns/fire {"type":"shotgun"}
execute as @a[scores={HasPropertiedWeapon=0..,GunType=4},advancements={ss_armory:gun/shot_crossbow=true}] at @s anchored eyes run function ss_armory:properties/guns/fire {"type":"paintball"}
    execute as @a[scores={HasPropertiedWeapon=0..,GunType=5},advancements={ss_armory:gun/shot_crossbow=true}] run scoreboard players set @s SeekerLifetime 3

# seekers
    execute as @a[scores={SeekerLifetime=1..}] run scoreboard players operation @s generic_a = @s SeekerLifetime
    execute as @a[scores={SeekerLifetime=1..}] run scoreboard players operation @s generic_a %= @s 3
    execute as @a[scores={SeekerLifetime=1..,generic_a=0}] at @s anchored eyes run function ss_armory:properties/guns/fire {"type":"seeker"}

# gunfire encumbrance
execute as @a[scores={HasPropertiedWeapon=0..,SneakTime=1..10,GunType=1..,OnGround=1}] run scoreboard players add @s encumbered_amount 30
execute as @a[scores={HasPropertiedWeapon=0..,SneakTime=11..20,GunType=1..,OnGround=1}] run scoreboard players add @s encumbered_amount 70
execute as @a[scores={HasPropertiedWeapon=0..,SneakTime=21..,GunType=1..,OnGround=1}] run function ss_statuses:immobilized

# jump disabling
    # execute as @a[scores={GunType=1..2}] run function ss_statuses:immobilized_jump
    # execute as @a[scores={GunType=1..2}] run attribute @s step_height modifier add gun_step_height 1 add_multiplied_base

# infinite ammo
execute as @a[scores={HasPropertiedWeapon=0..,SneakTime=1}] unless entity @s[scores={InfinitePowderslingAmmo=0}] \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{gun:{}}}] \
    unless items entity @s weapon.mainhand *[minecraft:charged_projectiles=[{id:"arrow",count:1}]] \
    run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:charged_projectiles":[{count:1,id:"minecraft:arrow"}]}}]

scoreboard players set @a[scores={InfinitePowderslingAmmo=1}] InfinitePowderslingAmmo 0

# resets
scoreboard players remove @a[scores={MultishotGun=1..}] MultishotGun 1
scoreboard players remove @a[scores={SeekerLifetime=1..}] SeekerLifetime 1

scoreboard players remove @a[scores={powdersling_cooldown=1..}] powdersling_cooldown 1