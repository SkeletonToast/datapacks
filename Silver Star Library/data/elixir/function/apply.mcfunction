# do the application message if stacks = 0 and/or runtime = 0
# run parse AND PASS AMP AND DURATION
# $execute unless score @s $(source).$(status).runtime matches 1.. run scoreboard players set @s $(source).$(status).runtime 1

function ssid:assign

$tag @s add $(source).$(status).active

# $function parse:score_unended_with_macros {function:"elixir:applying",score:ssid,macros:"source:$(source),status:$(status),duration:$(duration),amplifier:$(amplifier)"}
$function parse:score_unended_with_macros {function:"elixir:storage/store",score:ssid,macros:"source:$(source),status:$(status),duration:$(duration),amplifier:$(amplifier)"}