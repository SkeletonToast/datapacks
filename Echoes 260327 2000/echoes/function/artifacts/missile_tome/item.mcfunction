$item replace entity @s weapon.$(hand) with gunpowder[item_name="Tome of Anti-Air Missile",custom_data={artifact:{type:"missile_tome"}},consumable={consume_seconds:0,has_consume_particles:false,sound:"entity.ghast.shoot"},item_model="enchanted_book",use_remainder={id:"minecraft:gunpowder",count:1,components:{"minecraft:item_model":enchanted_book,"minecraft:custom_data":{artifact:{type:"missile_tome"}},"minecraft:item_name":"Tome of Anti-Air Missile"}}]

scoreboard players set @s generic_b 100
scoreboard players operation @s generic_b -= @s Mind
scoreboard players operation @s generic_b /= @s 10
function parse:score_unended {"score":"generic_b","function":"echoes:artifacts/drain_xp"}

scoreboard players operation @s generic_e = @s Mind
    scoreboard players operation @s generic_e *= @s 2
        scoreboard players operation @s generic_e *= @s 2
execute at @s anchored eyes run function parse:score_unended {"score":"Mind","function":"echoes:artifacts/missile_tome/launch"}

scoreboard players set @s used_gunpowder 0