$execute store result storage parse:decimal value double $(scale) run scoreboard players get @s $(score)
$data modify storage parse:decimal macros set value "$(macros)"
$data modify storage parse:decimal function set value "$(function)"
function parse:execute with storage parse:decimal
data remove storage parse:decimal value