execute unless score @s WeaponMaterial matches -1 run return fail
function ss_lib:fetch/gear/weapon_type
execute if score @s ItemSelected matches 0 run return fail

scoreboard players set @s[scores={WeaponMaterial=-1},predicate=ss_lib:holding/tool/wooden] WeaponMaterial 1
scoreboard players set @s[scores={WeaponMaterial=-1},predicate=ss_lib:holding/tool/stone] WeaponMaterial 2
scoreboard players set @s[scores={WeaponMaterial=-1},predicate=ss_lib:holding/tool/copper] WeaponMaterial 3
scoreboard players set @s[scores={WeaponMaterial=-1},predicate=ss_lib:holding/tool/iron] WeaponMaterial 4
scoreboard players set @s[scores={WeaponMaterial=-1},predicate=ss_lib:holding/tool/golden] WeaponMaterial 5
scoreboard players set @s[scores={WeaponMaterial=-1},predicate=ss_lib:holding/tool/diamond] WeaponMaterial 6
scoreboard players set @s[scores={WeaponMaterial=-1},predicate=ss_lib:holding/tool/netherite] WeaponMaterial 7