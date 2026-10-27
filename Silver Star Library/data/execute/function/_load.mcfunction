function gamerule:custom/load {source:execute,gamerule:positioned_lifetime,default:300}

scoreboard objectives add execute.target dummy
scoreboard objectives add execute.target_timer dummy

scoreboard players set $execute.positioned_lifetime value 0