execute as @a[scores={used_wind_charge=1..}] if items entity @s weapon.mainhand wind_charge[custom_data={artifact:{type:"wind_tome"}}] run function echoes:artifacts/wind_tome/item {"hand":"mainhand"}
execute as @a[scores={used_wind_charge=1..}] if items entity @s weapon.offhand wind_charge[custom_data={artifact:{type:"wind_tome"}}] run function echoes:artifacts/wind_tome/item {"hand":"offhand"}

execute as @a[scores={used_blaze_powder=1..}] if items entity @s weapon.mainhand blaze_powder[custom_data={artifact:{type:"fire_tome"}}] run function echoes:artifacts/fire_tome/item {"hand":"mainhand"}
execute as @a[scores={used_blaze_powder=1..}] if items entity @s weapon.offhand blaze_powder[custom_data={artifact:{type:"fire_tome"}}] run function echoes:artifacts/fire_tome/item {"hand":"offhand"}

execute as @a[scores={used_gunpowder=1..}] if items entity @s weapon.mainhand gunpowder[custom_data={artifact:{type:"missile_tome"}}] run function echoes:artifacts/missile_tome/item {"hand":"mainhand"}
execute as @a[scores={used_gunpowder=1..}] if items entity @s weapon.offhand gunpowder[custom_data={artifact:{type:"missile_tome"}}] run function echoes:artifacts/missile_tome/item {"hand":"offhand"}