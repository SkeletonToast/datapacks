scoreboard players set @s[scores={OnGround=1}] Chamber_Jumps 0
execute unless entity @s[scores={Chamber_Cooldown=1..}] run scoreboard players set @s Chamber_Cooldown 0
title @s[scores={Chamber_Cooldown=1..}] actionbar ["",{"text":"Character switching is still on cooldown. (","color":"white"},{"score":{"name":"*","objective":"Chamber_Cooldown"},"color":"red"},{"text":" ticks remaining)","color":"white"}]
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~3 ~-3 0 0 0 0 1 normal
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust{color:[1.000,0.500,0.000],scale:1} ~1.5 ~3 ~-2.6 0 0 0 0 1 normal
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust{color:[1.000,1.000,0.000],scale:1} ~2.6 ~3 ~-1.5 0 0 0 0 1
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust{color:[0.000,1.000,0.000],scale:1} ~3 ~3 ~ 0 0 0 0 1
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust{color:[0.000,0.000,1.000],scale:1} ~2.6 ~3 ~1.5 0 0 0 0 1
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust{color:[0.600,0.000,1.000],scale:1} ~1.5 ~3 ~2.6 0 0 0 0 1
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust{color:[1.000,0.000,0.750],scale:1} ~ ~3 ~3 0 0 0 0 1

execute as @s[name="Meat_Gum"] unless entity @e[type=text_display,tag=Chamber_Names,distance=..10] run function crowskeep:selection_chamber_names {"chr1":"Zelus","chr2":"Corvid","chr3":"Opal","chr4":"Zehari","chr5":"NULL","chr6":"NULL","chr7":"NULL"}
execute as @s[name="KidInTheCorner"] unless entity @e[type=text_display,tag=Chamber_Names,distance=..10] run function crowskeep:selection_chamber_names {"chr1":"Orion","chr2":"Vito","chr3":"Akira (WIP)","chr4":"Reaper","chr5":"NULL","chr6":"NULL","chr7":"NULL"}
execute as @s[name="CrackerPacket7"] unless entity @e[type=text_display,tag=Chamber_Names,distance=..10] run function crowskeep:selection_chamber_names {"chr1":"Ronin","chr2":"NULL","chr3":"NULL","chr4":"NULL","chr5":"NULL","chr6":"NULL","chr7":"NULL"}
execute as @s[name="IdkWoozy"] unless entity @e[type=text_display,tag=Chamber_Names,distance=..10] run function crowskeep:selection_chamber_names {"chr1":"Woozy","chr2":"NULL","chr3":"NULL","chr4":"NULL","chr5":"NULL","chr6":"NULL","chr7":"NULL"}
execute as @s[name="SkeletonToast"] unless entity @e[type=text_display,tag=Chamber_Names,distance=..10] run function crowskeep:selection_chamber_names {"chr1":"Evangeline","chr2":"Lete","chr3":"Laika","chr4":"Harper","chr5":"Elise","chr6":"Tharja","chr7":"NULL"}
execute as @s[name="lilywulf"] unless entity @e[type=text_display,tag=Chamber_Names,distance=..10] run function crowskeep:selection_chamber_names {"chr1":"Taswell","chr2":"NULL","chr3":"NULL","chr4":"NULL","chr5":"NULL","chr6":"NULL","chr7":"NULL"}
execute as @s[name="LilPumpkin9079"] unless entity @e[type=text_display,tag=Chamber_Names,distance=..10] run function crowskeep:selection_chamber_names {"chr1":"Pumpkin","chr2":"Homarach","chr3":"Avian","chr4":"Paladin","chr5":"Forma","chr6":"Passidian","chr7":"NULL"}
execute as @s[name="OfAllTrades0590"] unless entity @e[type=text_display,tag=Chamber_Names,distance=..10] run function crowskeep:selection_chamber_names {"chr1":"Ducky","chr2":"Avian","chr3":"Piconid","chr4":"Haligsundr","chr5":"NULL","chr6":"NULL","chr7":"NULL"}

execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @s[scores={Chamber_Selection=1,Chamber_Cooldown=0}] run particle electric_spark ~ ~3 ~-2.9
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @s[scores={Chamber_Selection=2,Chamber_Cooldown=0}] run particle electric_spark ~1.45 ~3 ~-2.5
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @s[scores={Chamber_Selection=3,Chamber_Cooldown=0}] run particle electric_spark ~2.5 ~3 ~-1.4
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @s[scores={Chamber_Selection=4,Chamber_Cooldown=0}] run particle electric_spark ~2.9 ~3 ~0.03
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @s[scores={Chamber_Selection=5,Chamber_Cooldown=0}] run particle electric_spark ~2.5 ~3 ~1.45
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @s[scores={Chamber_Selection=6,Chamber_Cooldown=0}] run particle electric_spark ~1.45 ~3 ~2.5
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @s[scores={Chamber_Selection=7,Chamber_Cooldown=0}] run particle electric_spark ~-0.05 ~3 ~2.9

execute run scoreboard players set @e[type=text_display,tag=Chamber_Names,distance=..10] Age -5

scoreboard players add @s[scores={SingleSneakTime=1}] Chamber_Selection 1
execute if score @s Chamber_Selection > @s Characters run scoreboard players set @s Chamber_Selection 1
execute if entity @s[scores={Chamber_Jumps=1..,Chamber_Cooldown=0}] run scoreboard players operation @s Character = @s Chamber_Selection
execute if entity @s[scores={Chamber_Jumps=1..,Chamber_Cooldown=0,species=001}] run function ss_species:s_001f_attributeset
execute if entity @s[scores={Chamber_Jumps=1..,Chamber_Cooldown=0}] at @s run particle explosion_emitter
execute if entity @s[scores={Chamber_Jumps=1..,Chamber_Cooldown=0}] at @s run playsound entity.wither.spawn master @s
execute if entity @s[scores={Chamber_Jumps=1..,Chamber_Cooldown=0}] run function crowskeep:character_scores_reset
scoreboard players set @s[scores={StaggerEligible=0}] StaggerRechargeTimer 10800
scoreboard players set @s[scores={Chamber_Jumps=1..,Chamber_Cooldown=0}] Chamber_Cooldown 200
scoreboard players set @s[scores={Chamber_Jumps=1..,Chamber_Cooldown=0}] Chamber_Jumps 0