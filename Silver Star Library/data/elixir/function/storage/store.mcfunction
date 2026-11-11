scoreboard players set @s elixir.storage.increment 0

$scoreboard players set @s elixir.storage.stored_amplifier $(amplifier)
$scoreboard players set @s elixir.storage.stored_duration $(duration)
$data modify storage elixir:$(value) $(source).$(status).stored.amplifier set value $(amplifier)
$data modify storage elixir:$(value) $(source).$(status).stored.duration set value $(duration)

# if data already exists, get current amplifier and duration
$execute as @s[scores={$(source).$(status).duration=1..}] run scoreboard players operation @s elixir.storage.current_amplifier = @s $(source).$(status).amplifier
$execute as @s[scores={$(source).$(status).duration=1..}] run scoreboard players operation @s elixir.storage.current_duration = @s $(source).$(status).duration

# adjusting duration
execute if score @s elixir.storage.stored_amplifier < @s elixir.storage.current_amplifier run scoreboard players operation @s elixir.storage.stored_duration -= @s elixir.storage.current_duration
    # this is done to all incoming values if the amplifier is lesser, so that it can be assumed that any value even being tested is viable
        # this way we can just directly read the duration and use that as a real number instead of doing calculations on it afterward
            # remember that if this application is going to overwrite application 1, it will just do so in the storage function

# rewriting current duration
$function parse:macros/simple {function:"elixir:storage/write_duration",score:$(source).$(status).duration,macros:"ssid:$(value),source:$(source),status:$(status),stack:1"}

# re-storing duration if this application is viable
$execute as @s[scores={$(source).$(status).duration=1..,elixir.storage.stored_duration=1..}] if score @s elixir.storage.stored_amplifier < @s elixir.storage.current_amplifier run \
    function parse:macros/simple {function:"elixir:storage/write_duration",score:elixir.storage.stored_duration,macros:"ssid:$(value),source:$(source),status:$(status),stack:stored"}

# applying
$function elixir:storage/increment {ssid:$(value),source:$(source),status:$(status)}

# post application score updates / cleanup
$execute store result score @s $(source).$(status).duration run data get storage elixir:$(value) $(source).$(status).1.duration
$execute store result score @s $(source).$(status).amplifier run data get storage elixir:$(value) $(source).$(status).1.amplifier
$data remove storage elixir:$(value) $(source).$(status).stored