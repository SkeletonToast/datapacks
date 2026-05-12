scoreboard players set @s Strength 39
scoreboard players set @s Dexterity 36
scoreboard players set @s Resolve 70
scoreboard players set @s Vitality 70
scoreboard players set @s MindSigned 21
scoreboard players set @s Tact 25
scoreboard players set @s SoulSigned 51

function ec_dev:auto_set_difficulty

function rp:check_stats

tellraw @s [{"text":"❖ Loaded stats of Arborknight Valentine, daughter of Evangeline, heiress to the ","color":"gray"},{"text":"Overgrowth","color":"green"},\
  {"text":", and Roots of the ","color":"gray"},{"text":"Cerulean Court","color":"blue"},{"text":".","color":"gray"}]