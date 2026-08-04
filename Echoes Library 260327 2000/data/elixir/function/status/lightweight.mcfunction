$effect give @a[scores={elixir.lightweight.stacks=1..}] slow_falling $(duration) $(amplifier)

$function elixir:storage/store {ssid:$(ssid),status:$(status),duration:$(duration),amplifier:$(amplifier)}

# schedule this same function next tick
# clear schedule if no conditions match (if there are no players who have a runtime lower than their duration maybe)