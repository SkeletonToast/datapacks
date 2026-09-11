scoreboard players set @s elixir.storage.increment 0

$scoreboard players set @s elixir.storage.stored_amplifier $(amplifier)
$scoreboard players set @s elixir.storage.stored_duration $(duration)
$data modify storage elixir:$(value) $(source).$(status).stored.amplifier set value $(amplifier)
$function parse:score_unended_with_macros {function:"elixir:storage/store_duration",score:elixir.storage.stored_duration,macros:"ssid:$(value),source:$(source),status:$(status)"}

# if application is NOT higher amplifier than current application, increase duration by current runtime
$execute as @s[scores={$(source).$(status).runtime=1..}] if data storage elixir:$(value) $(source).$(status).1 \
    store result score @s generic_a run data get storage elixir:$(value) $(source).$(status).1.amplifier
$execute as @s[scores={$(source).$(status).runtime=1..}] if data storage elixir:$(value) $(source).$(status).1 \
    if score @s elixir.storage.stored_amplifier < @s generic_a \
    if score @s elixir.storage.stored_duration > @s $(source).$(status).duration \
    run scoreboard players operation @s elixir.storage.stored_duration += @s $(source).$(status).runtime
$execute as @s[scores={$(source).$(status).runtime=1..}] if data storage elixir:$(value) $(source).$(status).1 \
    run function parse:score_unended_with_macros \
    {function:"elixir:storage/store_duration",score:elixir.storage.stored_duration,macros:"ssid:$(value),source:$(source),status:$(status)"}
# $data modify storage elixir:$(value) $(source).$(status).stored.duration set value $(duration)

$function elixir:storage/increment {ssid:$(value),source:$(source),status:$(status)}

$execute store result score @s $(source).$(status).duration run data get storage elixir:$(value) $(source).$(status).1.duration
$execute store result score @s $(source).$(status).amplifier run data get storage elixir:$(value) $(source).$(status).1.amplifier
# $scoreboard players operation @s $(source).$(status).stacks = @s elixir.storage.increment