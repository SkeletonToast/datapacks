scoreboard players add @s ss_alchemist.storage.increment 1

$function parse:score_unended_with_macros {function:"ss_alchemist:storage/write",score:ss_alchemist.storage.increment,macros:"ssid:$(ssid),status:$(status),duration:$(duration),amplifier:$(amplifier)"}

function ss_alchemist:storage/increment