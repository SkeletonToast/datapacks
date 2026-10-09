$execute as $(s) run function ss_lib:fetch/item_selected {s:"$(s)"}

$execute as $(s) if entity @s[scores={ItemSelected=1}] run function ss_lib:fetch/gear/weapon_type
$execute as $(s) if entity @s[scores={WeaponType=1..}] run function ss_lib:fetch/gear/weapon_weight
    # weapon_weight also calls weapon_material