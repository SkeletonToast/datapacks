$item replace entity @s weapon.$(hand) with iron_sword[item_name="Tome of Sharpness",custom_data={artifact:{type:"slashing_tome"}},consumable={consume_seconds:0,has_consume_particles:false,sound:"entity.ghast.shoot"},item_model="enchanted_book",use_remainder={id:"minecraft:iron_sword",count:1,components:{"minecraft:item_model":enchanted_book,"minecraft:custom_data":{artifact:{type:"slashing_tome"}},"minecraft:item_name":"Tome of Flame"}}]

scoreboard players set @s generic_b 60
scoreboard players operation @s generic_b -= @s Mind
scoreboard players operation @s generic_b /= @s 10
function parse:score_unended {"score":"generic_b","function":"echoes:artifacts/drain_xp"}

function echoes:artifacts/slashing_tome/slash

scoreboard players set @s used_iron_sword 0