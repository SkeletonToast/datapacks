$scoreboard objectives add $(source).$(status).duration dummy
$scoreboard objectives add $(source).$(status).amplifier dummy
$scoreboard objectives add $(source).$(status).stored_amplifier dummy
$data modify storage elixir:$(source) $(status).type set value 0
$data remove storage elixir:$(source) $(status).max_amplifier

scoreboard players add $elixir.total_statuses elixir.total_statuses 1