execute if score @s ssid matches 1.. run return fail
execute store result score @s ssid run random value 100000000..999999999

function parse:simple {score:ssid,function:"ssid:verify"}
execute if score @s ssid matches -1 run function ssid:assign