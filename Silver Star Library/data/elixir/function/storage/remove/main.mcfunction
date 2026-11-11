scoreboard players add @s elixir.storage.increment 1
scoreboard players add @s elixir.storage.increment_2 1

$function parse:macros/simple {function:"elixir:storage/remove/parse",score:elixir.storage.increment,macros:"source:$(source),status:$(status),ssid:$(ssid)"}