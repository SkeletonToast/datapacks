execute if score @s ssid matches 1.. run return fail
execute store result score @s ssid run random roll 100000000..999999999

function parse:score_unended {score:ssid,function:"ssid:verify"}
execute if score @s ssid matches -1 run function ssid:assign