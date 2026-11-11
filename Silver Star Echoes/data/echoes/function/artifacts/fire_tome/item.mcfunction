$item replace entity @s weapon.$(hand) with blaze_powder[item_name="Tome of Flame",custom_data={artifact:{type:"fire_tome"}},consumable={consume_seconds:0,has_consume_particles:false,sound:"entity.ghast.shoot"},item_model="enchanted_book",use_remainder={id:"minecraft:blaze_powder",count:1,components:{"minecraft:item_model":enchanted_book,"minecraft:custom_data":{artifact:{type:"fire_tome"}},"minecraft:item_name":"Tome of Flame"}}]

scoreboard players set @s generic_b 60
scoreboard players operation @s generic_b -= @s Mind
scoreboard players operation @s generic_b /= #const.10 value
function parse:simple {score:generic_b,function:"echoes:artifacts/drain_xp"}

effect give @s fire_resistance 3 0 false

execute at @s anchored eyes run function parse:simple {score:Mind,function:"echoes:artifacts/fire_tome/flame"}

scoreboard players set @s used_blaze_powder 0