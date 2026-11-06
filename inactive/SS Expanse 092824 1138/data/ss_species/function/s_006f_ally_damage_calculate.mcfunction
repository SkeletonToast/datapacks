tag @s[tag=FeldspariAllyDamageTaken] remove FeldspariAllyDamageTaken

execute as @s[scores={species006-03=0,species006-04=100..}] run function ss_species:s_006f_ally_damage_deal {"damage":"10","score":"100"}
execute as @s[tag=!FeldspariAllyDamageTaken,scores={species006-03=0,species006-04=90..}] run function ss_species:s_006f_ally_damage_deal {"damage":"9","score":"90"}
execute as @s[tag=!FeldspariAllyDamageTaken,scores={species006-03=0,species006-04=80..}] run function ss_species:s_006f_ally_damage_deal {"damage":"8","score":"80"}
execute as @s[tag=!FeldspariAllyDamageTaken,scores={species006-03=0,species006-04=70..}] run function ss_species:s_006f_ally_damage_deal {"damage":"7","score":"70"}
execute as @s[tag=!FeldspariAllyDamageTaken,scores={species006-03=0,species006-04=60..}] run function ss_species:s_006f_ally_damage_deal {"damage":"6","score":"60"}
execute as @s[tag=!FeldspariAllyDamageTaken,scores={species006-03=0,species006-04=50..}] run function ss_species:s_006f_ally_damage_deal {"damage":"5","score":"50"}
execute as @s[tag=!FeldspariAllyDamageTaken,scores={species006-03=0,species006-04=40..}] run function ss_species:s_006f_ally_damage_deal {"damage":"4","score":"40"}
execute as @s[tag=!FeldspariAllyDamageTaken,scores={species006-03=0,species006-04=30..}] run function ss_species:s_006f_ally_damage_deal {"damage":"3","score":"30"}
execute as @s[tag=!FeldspariAllyDamageTaken,scores={species006-03=0,species006-04=20..}] run function ss_species:s_006f_ally_damage_deal {"damage":"2","score":"20"}
execute as @s[tag=!FeldspariAllyDamageTaken,scores={species006-03=0,species006-04=10..}] run function ss_species:s_006f_ally_damage_deal {"damage":"1","score":"10"}
execute as @s[tag=!FeldspariAllyDamageTaken,scores={species006-03=0,species006-04=1..}] run function ss_species:s_006f_ally_damage_deal {"damage":"0.1","score":"1"}

scoreboard players set @s[scores={DamageTaken=1..}] species006-03 11
scoreboard players remove @s[scores={species006-03=1..}] species006-03 1