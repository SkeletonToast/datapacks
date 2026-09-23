# temporary, will move these later
scoreboard players set @a[scores={trait001=1..}] feeble_ineligible 1
# scoreboard players set @a[scores={species=001,species001-02=10..}] feeble_ineligible 1
# scoreboard players set @a[scores={species=006}] feeble_ineligible 1
# scoreboard players set @a[scores={species=016}] feeble_ineligible 1
# scoreboard players set @a[scores={species=018}] feeble_ineligible 1
# scoreboard players set @a[scores={species=020}] feeble_ineligible 1
    # add some condition for this
# scoreboard players set @a[scores={species=021}] feeble_ineligible 1

execute as @s[scores={feeble_ineligible=1}] run return fail

$attribute @s[scores={Armor=20..}] minecraft:movement_speed modifier add feeble_armor_movement_speed -$(multiplier) add_multiplied_total
$execute if score @s[scores={Armor=16..19}] Armor > @s Food run attribute @s minecraft:movement_speed modifier add feeble_armor_movement_speed -$(multiplier) add_multiplied_total
execute if score @s Armor <= @s Food run attribute @s minecraft:movement_speed modifier remove feeble_armor_movement_speed

$attribute @s[scores={WeaponWeight=3}] minecraft:movement_speed modifier add feeble_weapon_movement_speed -$(multiplier) add_multiplied_total
attribute @s[scores={WeaponWeight=..2}] minecraft:movement_speed modifier remove feeble_weapon_movement_speed

$attribute @s[advancements={ss_lib:lib/using_shield=true}] minecraft:movement_speed modifier add feeble_shield_movement_speed -$(multiplier) add_multiplied_total
attribute @s[advancements={ss_lib:lib/using_shield=false}] minecraft:movement_speed modifier remove feeble_shield_movement_speed

$attribute @s[scores={Armor=20..}] minecraft:jump_strength modifier add feeble_jump_strength -$(multiplier) add_multiplied_total
$execute if score @s[scores={Armor=16..19}] Armor > @s Food run attribute @s minecraft:jump_strength modifier add feeble_jump_strength -$(multiplier) add_multiplied_total
$attribute @s[scores={WeaponWeight=3}] minecraft:jump_strength modifier add feeble_jump_strength -$(multiplier) add_multiplied_total
$attribute @s[advancements={ss_lib:lib/using_shield=true}] minecraft:jump_strength modifier add feeble_jump_strength -$(multiplier) add_multiplied_total
execute if score @s[scores={WeaponWeight=..2},advancements={ss_lib:lib/using_shield=false}] Armor <= @s Food run attribute @s minecraft:jump_strength modifier remove feeble_jump_strength

scoreboard players set @s feeble_active 1