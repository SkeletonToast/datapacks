execute unless score @s WeaponWeight matches -1 run return fail
function ss_lib:fetch/gear/weapon_material

scoreboard players set @s[predicate=ss_lib:holding/tool/light] WeaponWeight 1
scoreboard players set @s[predicate=ss_lib:holding/tool/medium] WeaponWeight 2
scoreboard players set @s[predicate=ss_lib:holding/tool/heavy] WeaponWeight 3
scoreboard players set @s[predicate=ss_lib:holding/tool/superheavy] WeaponWeight 4
scoreboard players set @s[predicate=ss_lib:holding/tool/ultraheavy] WeaponWeight 5

scoreboard players remove @s[scores={WeaponMaterial=1}] WeaponWeight 1
scoreboard players remove @s[scores={WeaponMaterial=3}] WeaponWeight 1
scoreboard players remove @s[scores={WeaponMaterial=5}] WeaponWeight 1
scoreboard players add @s[scores={WeaponMaterial=7}] WeaponWeight 1