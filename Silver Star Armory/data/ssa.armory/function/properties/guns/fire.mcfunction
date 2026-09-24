$execute as @s[predicate=ss_armory:has_gun_fuel] run function ss_armory:properties/guns/$(type)/fire
execute unless entity @s[predicate=ss_armory:has_gun_fuel] run playsound minecraft:block.anvil.place player @s ^ ^ ^1 0.5 0.9
$execute positioned ^ ^ ^ as @e[type=#minecraft:arrows,distance=..5,scores={Age=1}] at @s \
    on origin if items entity @s[scores={HasPropertiedWeapon=0..},advancements={ss_armory:gun/shot_crossbow=true}] weapon.* \
    *[minecraft:custom_data~{weapon:{gun:{type:"$(type)"}}}] as @e[type=#minecraft:arrows,distance=0,scores={Age=1}] run kill @s
execute unless entity @s[scores={MultishotTimer=1}] unless entity @s[scores={GunType=2}] run clear @s[scores={InfinitePowderslingAmmo=0}] *[minecraft:custom_data~{"weapon":{"gun":{"fuel":"true"}}}] 1
    # unless guntype=2..3 is temporary while only devi has a shotgun
execute unless entity @s[scores={MultishotTimer=1}] if entity @s[scores={GunType=2}] unless entity @s[scores={powdersling_cooldown=1..}] if predicate ss_lib:random_50_percent run clear @s[scores={InfinitePowderslingAmmo=0}] *[minecraft:custom_data~{"weapon":{"gun":{"fuel":"true"}}}] 1
execute unless entity @s[scores={MultishotTimer=1}] if entity @s[scores={GunType=2}] if entity @s[scores={powdersling_cooldown=1..}] run clear @s[scores={InfinitePowderslingAmmo=0}] *[minecraft:custom_data~{"weapon":{"gun":{"fuel":"true"}}}] 1