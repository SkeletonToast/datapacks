$execute as $(s) run function ss_lib:fetch/item_selected {s:"$(s)"}

$execute as $(s) if score @s ItemSelected matches 1 run function ss_lib:fetch/gear/weapon_type
$execute as $(s) if score @s WeaponType matches 1.. run function ss_lib:fetch/gear/weapon_weight
    # weapon_weight also calls weapon_material, so the WeaponMaterial score is assigned here as well