function ss_lib:fetch/attack_damage {s:"@s",scale:100,bypass_check:true}
scoreboard players operation @s generic_a = @s AttackDamage
        scoreboard players set @s generic_p 0
    execute store result score @s generic_p run attribute @s attack_damage modifier value get minecraft:effect.weakness 100
scoreboard players operation @s generic_a -= @s generic_p
        scoreboard players set @s generic_p 0
    execute store result score @s generic_p run attribute @s attack_damage modifier value get minecraft:effect.strength 100
scoreboard players operation @s generic_a -= @s generic_p
scoreboard players set @s[scores={generic_a=..99}] generic_a 100

scoreboard players operation @s proficiency_normalized = @s proficiency
scoreboard players operation @s proficiency_normalized *= @s generic_a
function math:divide/int {score:proficiency_normalized,div:1000}