$function ss_lib:fetch/item_selected {"s":"$(s)"}

$execute as $(s) if entity @s[scores={ItemSelected=1}] run function ss_lib:gear/weapon_type
$execute as $(s) if entity @s[scores={WeaponType=1..}] run function ss_lib:gear/weapon_weight