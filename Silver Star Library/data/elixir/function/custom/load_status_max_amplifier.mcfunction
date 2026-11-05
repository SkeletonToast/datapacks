$function elixir:custom/load_status {source:$(source),status:$(status)}
$data modify storage elixir:$(source) $(status).max_amplifier set value $(max_amplifier)

# this function does not increment total statuses score, because the function called above already does that