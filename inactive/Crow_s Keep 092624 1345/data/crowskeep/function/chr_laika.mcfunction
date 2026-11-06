scoreboard players set @s CharacterSpecies 3
scoreboard players set @s class005 1
execute as @s[scores={Health=..0}] at @n[tag=laika_golem] run function ss_species:s_003f_prepare_golem_for_egg
execute as @s[scores={SoftTimeSinceDeath=2}] unless entity @e[tag=laika_golem] run function ss_species:s_003f_givegolemegg {"CustomName":"{\"color\":\"yellow\",\"italic\":false,\"text\":\"Shion\"}","Health":"200","Tags":"[\"paladin_golem\",\"laika_golem\"]"}