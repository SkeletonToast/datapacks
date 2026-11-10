function gamerule:custom/load {source:execute,gamerule:positioned_range,default:300}
function gamerule:custom/load {source:execute,gamerule:targeting_range,default:50}

scoreboard objectives add execute.target dummy
scoreboard objectives add execute.attacker dummy
scoreboard objectives add execute.targeted_timer dummy
scoreboard objectives add execute.targeting_timer dummy

scoreboard players set $execute.positioned_range value 0