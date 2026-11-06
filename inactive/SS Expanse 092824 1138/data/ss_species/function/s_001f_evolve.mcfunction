scoreboard players remove @s species001-03 1
scoreboard players add @s species001-02 1
item replace entity @s weapon.mainhand with air
scoreboard players set @s species001-04 0

# xp drain
xp add @s[scores={species001-02=..3}] -5 levels
xp add @s[scores={species001-02=4..7}] -10 levels
xp add @s[scores={species001-02=8..11}] -15 levels
xp add @s[scores={species001-02=12..19}] -20 levels
xp add @s[scores={species001-02=20..}] -30 levels
    #i am pretty sure this works but i might have to revisit it, because if i just use the same system as in the s_001 file it deducts like 50 levels from a 3-soul person
        #this isnt an issue in the s_001 file because all checks have the same result, so it doesn't cause issues if that result occurs more than once

execute at @s run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 1.5
execute at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 0.7
execute at @s run function ss_particles:lavaburst

effect give @s[scores={species001-02=30..}] instant_health 1 10 true
effect give @s[scores={species001-02=30..}] saturation 1 20 true
function ss_species:s_001f_attributeset

tellraw @s [{"text":"You've Evolved. You have now Evolved ","color":"#cc33ff"},{"score":{"name":"@s","objective":"species001-02"},"color":"#cc33ff"},{"text":" times.","color":"#cc33ff"}]