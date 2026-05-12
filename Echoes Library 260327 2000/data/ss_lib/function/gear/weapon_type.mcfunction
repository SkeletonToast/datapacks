execute as @s[scores={WeaponType=0}] if items entity @s weapon.mainhand #minecraft:swords run scoreboard players set @s WeaponType 1
execute as @s[scores={WeaponType=0}] if items entity @s weapon.mainhand #minecraft:axes run scoreboard players set @s WeaponType 2
execute as @s[scores={WeaponType=0}] if items entity @s weapon.mainhand #minecraft:spears run scoreboard players set @s WeaponType 3
execute as @s[scores={WeaponType=0}] if items entity @s weapon.mainhand #minecraft:shovels[minecraft:custom_data~{weapon:{special:true}}] run scoreboard players set @s WeaponType 3
execute as @s[scores={WeaponType=0}] if items entity @s weapon.mainhand #minecraft:hoes[minecraft:custom_data~{weapon:{special:true}}] run scoreboard players set @s WeaponType 4
execute as @s[scores={WeaponType=0}] if items entity @s weapon.mainhand trident run scoreboard players set @s WeaponType 5
# execute as @s[scores={WeaponType=0}] if items entity @s weapon.mainhand #minecraft:pickaxes[minecraft:custom_data~{weapon:{special:true}}] run scoreboard players set @s WeaponType 5
execute as @s[scores={WeaponType=0}] if items entity @s weapon.mainhand mace run scoreboard players set @s WeaponType 6
execute as @s[scores={WeaponType=0}] if items entity @s weapon.mainhand minecraft:bow run scoreboard players set @s WeaponType 7
execute as @s[scores={WeaponType=0}] if items entity @s weapon.mainhand minecraft:crossbow run scoreboard players set @s WeaponType 8
execute as @s[scores={WeaponType=0}] if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{gun:{}}}] run scoreboard players set @s WeaponType 9
execute as @s[scores={WeaponType=8}] if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{gun:{}}}] run scoreboard players set @s WeaponType 9
execute as @s[scores={WeaponType=0..1}] if items entity @s weapon.mainhand iron_sword[custom_model_data={strings:["whip"]},minecraft:custom_data~{weapon:{special:true}}] run scoreboard players set @s WeaponType 10
execute as @s[scores={WeaponType=0}] if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{}}] run scoreboard players set @s WeaponType -1