# elixir.storage.current_amplifier = amplifier of the "incumbent" application
# elixir.storage.current_duration = duration of the "incumbent" application
# elixir.storage.stored_amplifier = incoming amplifier, exists because the stored data is overwritten if it needs to be stored
# elixir.storage.stored_duration = incoming duration, exists because the stored data is overwritten if it needs to be stored
# data $(source).$(status).stored = written ONLY if the incumbent application needs to be passed on

scoreboard players set @s elixir.storage.current_amplifier -1
scoreboard players set @s elixir.storage.current_duration 0
$execute store result score @s[scores={$(source).$(status).duration=1..}] elixir.storage.current_amplifier run data get storage elixir:$(ssid) $(source).$(status).$(value).amplifier
$execute store result score @s[scores={$(source).$(status).duration=1..}] elixir.storage.current_duration run data get storage elixir:$(ssid) $(source).$(status).$(value).duration

# failure conditions
    execute if score @s elixir.storage.stored_duration matches ..0 run return fail
    execute if score @s elixir.storage.stored_amplifier matches -1 run return fail
    # if incoming duration is (less than) zero
        # remember that this also catches all applications that aren't larger than the current application
    execute unless score @s elixir.storage.stored_amplifier > @s elixir.storage.current_amplifier unless score @s elixir.storage.stored_duration > @s elixir.storage.current_duration run return fail
    # if neither incoming amplifier or duration are not larger than current amp/duration

# comparing stored values, switching stored data if necessary
$execute if score @s elixir.storage.current_amplifier < @s elixir.storage.stored_amplifier if score @s elixir.storage.current_duration > @s elixir.storage.stored_duration run \
    function parse:score_unended_with_macros {function:"elixir:storage/write_amplifier",score:elixir.storage.current_amplifier,macros:"ssid:$(ssid),source:$(source),status:$(status),stack:stored"}
$execute if score @s elixir.storage.current_amplifier < @s elixir.storage.stored_amplifier if score @s elixir.storage.current_duration > @s elixir.storage.stored_duration run \
    function parse:score_unended_with_macros {function:"elixir:storage/write_duration",score:elixir.storage.current_duration,macros:"ssid:$(ssid),source:$(source),status:$(status),stack:stored"}

# edge case - changing current duration
$execute if score @s elixir.storage.stored_amplifier >= @s elixir.storage.current_amplifier if score @s elixir.storage.current_duration < @s elixir.storage.stored_duration run \
    data modify storage elixir:$(ssid) $(source).$(status).$(value).amplifier set from storage elixir:$(ssid) $(source).$(status).stored.amplifier
$execute if score @s elixir.storage.stored_amplifier >= @s elixir.storage.current_amplifier if score @s elixir.storage.current_duration < @s elixir.storage.stored_duration run \
    data modify storage elixir:$(ssid) $(source).$(status).$(value).duration set from storage elixir:$(ssid) $(source).$(status).stored.duration
execute if score @s elixir.storage.stored_amplifier >= @s elixir.storage.current_amplifier if score @s elixir.storage.current_duration < @s elixir.storage.stored_duration run return fail

# writing new values - ONLY if incoming amplifier is HIGHER. otherwise it just stayed stored or changed current duration
$execute if score @s elixir.storage.current_amplifier < @s elixir.storage.stored_amplifier run \
    function parse:score_unended_with_macros {function:"elixir:storage/write_amplifier",score:elixir.storage.stored_amplifier,macros:"ssid:$(ssid),source:$(source),status:$(status),stack:$(value)"}
$execute if score @s elixir.storage.current_amplifier < @s elixir.storage.stored_amplifier run \
    function parse:score_unended_with_macros {function:"elixir:storage/write_duration",score:elixir.storage.stored_duration,macros:"ssid:$(ssid),source:$(source),status:$(status),stack:$(value)"}

# writing new scores - has to be this way otherwise the two comparisons don't work
execute if score @s elixir.storage.current_amplifier < @s elixir.storage.stored_amplifier run \
    function elixir:storage/write_new_scores

$function elixir:storage/increment {ssid:$(ssid),source:$(source),status:$(status)}

# apply stored ones if there's no data at the next location
# create scores and then create one centralized function that takes the status ID and does all the necessary subfunction