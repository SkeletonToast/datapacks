$item replace entity @s weapon.$(hand) with wind_charge[item_model=enchanted_book,custom_data={artifact:{type:"wind_tome"}},item_name="Tome of Wind",use_remainder={id:"minecraft:wind_charge",count:1,components:{"minecraft:item_model":enchanted_book,"minecraft:custom_data":{artifact:{type:"wind_tome"}},"minecraft:item_name":"Tome of Wind"}}]

scoreboard players set @s generic_b 60
scoreboard players operation @s generic_b -= @s Mind
scoreboard players operation @s generic_b /= #const.10 value
function parse:simple {score:generic_b,function:"echoes:artifacts/drain_xp"}

scoreboard players set @s used_wind_charge 0