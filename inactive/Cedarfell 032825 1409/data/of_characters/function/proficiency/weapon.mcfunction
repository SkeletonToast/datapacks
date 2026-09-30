scoreboard players remove @s[scores={WeaponWeight=2..,weapon_proficiency=20..}] WeaponWeight 1

# damage
execute as @s[scores={WeaponType=1..6}] run function run:score_modified {"score":"weapon_proficiency","prepend":"","append":".","function":"of_characters:proficiency/weapon_damage"}

# speed
scoreboard players operation @s[scores={WeaponType=1..6,weapon_proficiency=1..60}] generic_a = @s weapon_proficiency
scoreboard players set @s[scores={WeaponType=1..6,weapon_proficiency=61..}] generic_a 60
scoreboard players operation @s[scores={WeaponType=1..6}] generic_a /= @s 2
execute as @s[scores={WeaponType=1..6}] run function run:score {"score":"generic_a","function":"of_characters:proficiency/weapon_speed"}

# bow movement speed
execute as @s[scores={WeaponType=7,UsingBow=1..}] run attribute @s movement_speed modifier add weapon_proficiency_bow_movement_speed 2 add_multiplied_base