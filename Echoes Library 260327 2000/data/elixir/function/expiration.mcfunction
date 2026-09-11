$scoreboard players set @s $(source).$(status).amplifier -1
$scoreboard players set @s $(source).$(status).duration -1

$data remove storage elixir:$(value) $(source).$(status).1

$execute unless data storage elixir:$(value) $(source).$(status).2 run scoreboard players set @s $(source).$(status).runtime 0
$execute unless data storage elixir:$(value) $(source).$(status).2 run return fail
# remember that everything below here assumes there is a second application to sort through
    # otherwise it just terminates early because there's no more data to clean up

$execute store result score @s $(source).$(status).amplifier run data get storage elixir:$(value) $(source).$(status).2.amplifier
$execute store result score @s $(source).$(status).duration run data get storage elixir:$(value) $(source).$(status).2.duration

# $execute if score @s $(source).$(status).duration >= @s $(source).$(status).runtime run scoreboard players operation @s $(source).$(status).duration -= @s $(source).$(status).runtime
# $execute if score @s $(source).$(status).duration < @s $(source).$(status).runtime run scoreboard players set @s $(source).$(status).duration -1
    # THE ISSUE IS HERE SOMEWHERE.
    # the code seems to think that the incoming duration is ALWAYS smaller than the current runtime, even though that's usually not possible.

scoreboard players set @s elixir.storage.increment 0
scoreboard players set @s elixir.storage.increment_2 1
$execute run function elixir:storage/remove/main {source:$(source),status:$(status),ssid:$(value)}