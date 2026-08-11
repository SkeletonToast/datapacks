execute as @a[tag=InCombat] run function echoes:player/combat/proficiency/normalize

execute as @a[scores={WeaponType=1..6,proficiency_normalized=1..},tag=InCombat] run function parse:score \
        {"score":"proficiency_normalized","prepend":"","append":".","prepend_position":0,"append_position":3,"function":"echoes:player/combat/proficiency/apply_damage"}

execute as @a[scores={WeaponType=0,proficiency_normalized=1..},tag=InCombat] run function ss_lib:fetch/item_selected {"s":"@s"}
execute as @a[scores={ItemSelected=0,proficiency_normalized=1..},tag=InCombat] run function parse:score \
        {"score":"proficiency_normalized","prepend":"","append":".","prepend_position":0,"append_position":3,"function":"echoes:player/combat/proficiency/apply_damage"}

scoreboard players operation @a[scores={WeaponType=1..6,proficiency=1..},tag=InCombat,tag=Dexterity_feat_2] generic_d = @s proficiency_dex

execute as @a[scores={WeaponType=1..6,proficiency=1..},tag=InCombat,tag=Dexterity_feat_2] run \
        function math:round/100_reduce {"score":"generic_d"}
execute as @a[scores={WeaponType=1..6,proficiency=1..},tag=InCombat,tag=Dexterity_feat_2] run \
        function math:round/10_reduce {"score":"generic_d"}
execute as @a[scores={WeaponType=1..6,proficiency=1..},tag=InCombat,tag=Dexterity_feat_2] run function parse:score \
        {"score":"generic_d","prepend":"","append":".","prepend_position":0,"append_position":2,"function":"echoes:player/combat/proficiency/apply_speed"}