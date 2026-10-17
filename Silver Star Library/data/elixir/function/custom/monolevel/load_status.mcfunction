$scoreboard objectives add $(source).$(status).duration dummy
$data modify storage elixir:$(source) $(status).type set value 1

scoreboard players add $elixir.total_statuses elixir.total_statuses 1