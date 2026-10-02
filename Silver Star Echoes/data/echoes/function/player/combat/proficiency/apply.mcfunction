execute as @a[scores={sse.difficulty.proficiency_limit=0..}] if score @s proficiency > @s sse.difficulty.proficiency_limit run scoreboard players operation @s proficiency = @s sse.difficulty.proficiency_limit
execute as @a[tag=InCombat] run function echoes:player/combat/proficiency/normalize

# every 1,000 normalized proficiency is +1 damage
# every 100 base proficiency is +1% damage

execute as @a[scores={WeaponType=1..6,proficiency_normalized=1..},tag=InCombat] run function parse:score \
        {score:proficiency_normalized,prepend:"",append:".",prepend_position:0,append_position:3,function:"echoes:player/combat/proficiency/apply_damage"}

execute as @a[scores={WeaponType=0,proficiency_normalized=1..},tag=InCombat] run function ss_lib:fetch/item_selected {s:"@s"}
execute as @a[scores={ItemSelected=0,proficiency_normalized=1..},tag=InCombat] run function parse:score \
        {score:proficiency_normalized,prepend:"",append:".",prepend_position:0,append_position:3,function:"echoes:player/combat/proficiency/apply_damage"}

scoreboard players operation @a[scores={WeaponType=1..6,proficiency=1..},tag=InCombat,tag=Dexterity_feat_2] generic_d = @s proficiency_dex

execute as @a[scores={WeaponType=1..6,proficiency=1..},tag=InCombat,tag=Dexterity_feat_2] unless score @s EchoDifficulty matches 2 run \
        function math:round {score:generic_d,round:100,reduce:true}
execute as @a[scores={WeaponType=1..6,proficiency=1..},tag=InCombat,tag=Dexterity_feat_2] unless score @s EchoDifficulty matches 2 run \
        function math:round {score:generic_d,round:10,reduce:true}
execute as @a[scores={WeaponType=1..6,proficiency=1..},tag=InCombat,tag=Dexterity_feat_2] unless score @s EchoDifficulty matches 2 run function parse:score \
        {score:generic_d,prepend:"",append:".",prepend_position:0,append_position:2,function:"echoes:player/combat/proficiency/apply_speed"}