execute unless score @s WeaponWeight matches -1 run return fail

scoreboard players set @s[predicate=ss_lib:holding/tool/light] WeaponWeight 1
scoreboard players set @s[predicate=ss_lib:holding/tool/medium] WeaponWeight 2
scoreboard players set @s[predicate=ss_lib:holding/tool/heavy] WeaponWeight 3
scoreboard players set @s[predicate=ss_lib:holding/tool/superheavy] WeaponWeight 4
scoreboard players set @s[predicate=ss_lib:holding/tool/ultraheavy] WeaponWeight 5