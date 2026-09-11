# generic_a = amplifier of the "incumbent" application
# generic_d = duration of the "incumbent" application
# elixir.storage.stored_amplifier = incoming amplifier, exists because the stored data is overwritten if it needs to be stored
# elixir.storage.stored_duration = incoming duration, exists because the stored data is overwritten if it needs to be stored
# data $(source).$(status).stored = written ONLY if the incumbent application needs to be passed on

$execute unless data storage elixir:$(ssid) $(source).$(status).$(value) run function elixir:storage/write_new {ssid:$(ssid),source:$(source),status:$(status),value:$(value)}

$execute store result score @s generic_a run data get storage elixir:$(ssid) $(source).$(status).$(value).amplifier
$execute store result score @s generic_d run data get storage elixir:$(ssid) $(source).$(status).$(value).duration

$execute if score @s elixir.storage.stored_duration matches 0 run data remove storage elixir:$(ssid) $(source).$(status).stored
    # if incoming duration is zero
$execute if score @s generic_a >= @s elixir.storage.stored_amplifier if score @s generic_d >= @s elixir.storage.stored_duration run data remove storage elixir:$(ssid) $(source).$(status).stored
    # if the incoming amplifier AND duration are both less than/equal to the current amplifier and duration, the application is just discarded
$execute unless data storage elixir:$(ssid) $(source).$(status).stored run return fail

# comparing stored values
$execute if score @s generic_a < @s elixir.storage.stored_amplifier if score @s generic_d > @s elixir.storage.stored_duration \
    if score @s generic_d matches 1.. run data modify storage elixir:$(ssid) $(source).$(status).stored.amplifier set from storage \
    elixir:$(ssid) $(source).$(status).$(value).amplifier
    # if the incoming amplifier is greater than the current amplifier, and the incoming duration is LESS than the current duration, take the current amplifier and write it to stored data
        # otherwise it would just be overwritten by the stronger effect
    # if the incoming amplifier is LESS THAN the current amplifier, the stored amplifier data (incoming) remains unchanged, because it'll be used next time

$execute if score @s generic_a < @s elixir.storage.stored_amplifier if score @s generic_d > @s elixir.storage.stored_duration \
    if score @s generic_d matches 1.. run data modify storage elixir:$(ssid) $(source).$(status).stored.duration set from storage \
    elixir:$(ssid) $(source).$(status).$(value).duration

# edge case - changing current duration
$execute if score @s generic_a = @s elixir.storage.stored_amplifier if score @s generic_d < @s elixir.storage.stored_duration \
    run data modify storage elixir:$(ssid) $(source).$(status).$(value).duration set from storage elixir:$(ssid) $(source).$(status).stored.duration
    # this is fine as is, because all the other stuff only happens if the duration is higher.

# writing new values - uses same comparisons
$execute if score @s generic_a < @s elixir.storage.stored_amplifier run \
    function parse:score_unended_with_macros {function:"elixir:storage/write_amplifier",score:elixir.storage.stored_amplifier,macros:"ssid:$(ssid),source:$(source),status:$(status),stack:$(value)"}
$execute if score @s generic_a < @s elixir.storage.stored_amplifier run \
    function parse:score_unended_with_macros {function:"elixir:storage/write_duration",score:elixir.storage.stored_duration,macros:"ssid:$(ssid),source:$(source),status:$(status),stack:$(value)"}

# writing actual current scores - THIS SHOULD ONLY HAPPEN FOR FIRST APPLICATION, ISSUE???
    # $execute if score @s generic_a < @s elixir.storage.stored_amplifier if score @s generic_d > @s elixir.storage.stored_duration run \
    #     scoreboard players operation @s $(source).$(status).duration = @s elixir.storage.stored_duration
    # $execute if score @s generic_a < @s elixir.storage.stored_amplifier if score @s generic_d > @s elixir.storage.stored_duration run \
    #     scoreboard players operation @s $(source).$(status).amplifier = @s elixir.storage.stored_amplifier
# not necessary because storage/store does this

# writing new scores - has to be this way otherwise the two comparisons don't work
execute if score @s generic_a < @s elixir.storage.stored_amplifier if score @s generic_d > @s elixir.storage.stored_duration run \
    function elixir:storage/write_new_scores

$function elixir:storage/increment {ssid:$(ssid),source:$(source),status:$(status)}

# apply stored ones if there's no data at the next location
# create scores and then create one centralized function that takes the status ID and does all the necessary subfunction