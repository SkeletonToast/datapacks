# assigning
scoreboard players operation @s Dexterity = @s Body
scoreboard players operation @s Fortitude = @s Body
scoreboard players operation @s Wisdom = @s Mind
scoreboard players operation @s Focus = @s Mind
scoreboard players operation @s Spirit = @s Soul
scoreboard players operation @s Resistance = @s Soul

# secondary stats
scoreboard players operation @s Dexterity += @s Wit
scoreboard players operation @s Dexterity += @s Wit
scoreboard players operation @s Fortitude += @s Will
scoreboard players operation @s Fortitude += @s Will

scoreboard players operation @s Wisdom += @s Wit
scoreboard players operation @s Wisdom += @s Wit
scoreboard players operation @s Focus += @s Will
scoreboard players operation @s Focus += @s Will

scoreboard players operation @s Spirit += @s Wit
scoreboard players operation @s Spirit += @s Wit
scoreboard players operation @s Resistance += @s Will
scoreboard players operation @s Resistance += @s Will

# averaging
function of_characters:stats/average_secondary_stats {"stat":"Fortitude"}
function of_characters:stats/average_secondary_stats {"stat":"Focus"}
function of_characters:stats/average_secondary_stats {"stat":"Resistance"}
function of_characters:stats/average_secondary_stats {"stat":"Dexterity"}
function of_characters:stats/average_secondary_stats {"stat":"Wisdom"}
function of_characters:stats/average_secondary_stats {"stat":"Spirit"}