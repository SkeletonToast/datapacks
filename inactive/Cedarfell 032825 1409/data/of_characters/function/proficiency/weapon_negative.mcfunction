execute as @a[scores={WeaponType=1..6}] run function run:score {"score":"weapon_proficiency","function":"of_characters:proficiency/weapon_encumber"}

scoreboard players operation @s weapon_proficiency *= @s 2
execute as @a[scores={WeaponType=1..6}] run function run:score_modified {"score":"weapon_proficiency","prepend":"-","append":".","function":"of_characters:proficiency/weapon_damage"}
execute as @a[scores={WeaponType=1..6}] run function run:score_modified {"score":"weapon_proficiency","prepend":"-","append":"","function":"of_characters:proficiency/weapon_speed"}