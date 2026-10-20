execute as @a[scores={sse.difficulty.proficiency_limit=0..}] if score @s proficiency > @s sse.difficulty.proficiency_limit run scoreboard players operation @s proficiency = @s sse.difficulty.proficiency_limit
execute as @a[tag=InCombat] run function echoes:player/combat/proficiency/normalize

# every 1,000 normalized proficiency is +1 damage
# every 100 base proficiency is +1% damage

execute as @a[scores={WeaponType=1..6,proficiency_normalized=1..},tag=InCombat] run function parse:decimal \
        {score:proficiency_normalized,scale:0.001,function:"echoes:player/combat/proficiency/apply_damage"}

function ss_lib:fetch/item_selected {s:"@a[scores={WeaponType=0,proficiency_normalized=1..},tag=InCombat]"}
execute as @a[scores={ItemSelected=0,proficiency_normalized=1..},tag=InCombat] run function parse:decimal \
        {score:proficiency_normalized,scale:0.001,function:"echoes:player/combat/proficiency/apply_damage"}

scoreboard players operation @a[scores={WeaponType=1..6,proficiency=1..},tag=InCombat,tag=Dexterity_feat_2] generic_d = @s proficiency_dex

execute as @a[scores={WeaponType=1..6,proficiency=1..},tag=InCombat,tag=Dexterity_feat_2] unless score @s sse.difficulty matches 2 run \
        function math:divide/int {score:generic_d,div:100}
execute as @a[scores={WeaponType=1..6,proficiency=1..},tag=InCombat,tag=Dexterity_feat_2] unless score @s sse.difficulty matches 2 run \
        function math:divide/int {score:generic_d,div:10}
execute as @a[scores={WeaponType=1..6,proficiency=1..},tag=InCombat,tag=Dexterity_feat_2] unless score @s sse.difficulty matches 2 run function parse:decimal \
        {score:generic_d,scale:0.01,function:"echoes:player/combat/proficiency/apply_speed"}