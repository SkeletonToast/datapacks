execute as @s[type=player,scores={blood=2}] if predicate ss_lib:random_50_percent if predicate ss_lib:random_50_percent run function of_items:bloodletter/beast_blood_select
execute as @s[type=player,scores={blood=3}] if predicate ss_lib:random_50_percent if predicate ss_lib:random_10_percent on attacker if items entity @s[tag=!BloodLet] weapon.offhand glass_bottle run function of_items:bloodletter/give_ichor
execute as @s[type=player] on attacker if items entity @s[tag=!BloodLet] weapon.offhand glass_bottle run function of_items:bloodletter/give_human_blood
execute as @s[type=player] on attacker run tag @s remove LetBlood

execute as @s[type=#ss_lib:passive] on attacker if items entity @s weapon.offhand glass_bottle run function of_items:bloodletter/give_animal_blood
execute as @s[type=#ss_lib:hostile,type=!#minecraft:undead] on attacker if items entity @s weapon.offhand glass_bottle run function of_items:bloodletter/give_monster_blood

tag @s add StatusEligible
execute unless entity @s[scores={bleeding_timer=100..}] run scoreboard players set @s bleeding_timer 100