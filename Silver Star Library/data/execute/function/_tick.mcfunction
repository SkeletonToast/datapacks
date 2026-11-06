function gamerule:custom/tick_range {source:execute,gamerule:positioned_range,lower_limit:1,upper_limit:1000}

scoreboard players remove @a[scores={execute.targeting_timer=1..}] execute.targeting_timer 1
scoreboard players remove @e[scores={execute.targeted_timer=1..}] execute.targeted_timer 1
scoreboard players reset @a[scores={execute.targeting_timer=0}] execute.target
# scoreboard players reset @e[scores={execute.targeted_timer=0}] execute.attacker