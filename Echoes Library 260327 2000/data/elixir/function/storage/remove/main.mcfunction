scoreboard players add @s elixir.storage.increment 1
scoreboard players add @s elixir.storage.increment_2 1

$function parse:score_unended_with_macros {function:"elixir:storage/remove/parse",score:elixir.storage.increment,macros:"source:$(source),status:$(status),ssid:$(ssid)"}