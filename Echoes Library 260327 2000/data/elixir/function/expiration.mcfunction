# $scoreboard players set @s $(source).$(status).duration 0
# $scoreboard players set @s $(source).$(status).amplifier 0
# $scoreboard players set @s $(source).$(status).runtime 0
# $scoreboard players set @s $(source).$(status).stacks 0

scoreboard players set @s elixir.storage.increment 0
scoreboard players set @s elixir.storage.increment_2 1
$scoreboard players set @s $(source).$(status).amplifier 0
$scoreboard players set @s $(source).$(status).duration -1

$data remove storage elixir:$(value) $(source).$(status).1

# execute if data storage elixir:528 elixir.lightweight.2 store result score @s elixir.lightweight.duration run data get storage elixir:528 elixir.lightweight.2.duration
# $execute if data storage elixir:$(value) $(source).$(status).2 store result score @s elixir.lightweight.duration run data get storage elixir:$(value) elixir.lightweight.2.duration
$execute if data storage elixir:$(value) $(source).$(status).2 store result score @s $(source).$(status).duration run data get storage elixir:$(value) $(source).$(status).2.duration
$execute if data storage elixir:$(value) $(source).$(status).2 store result score @s $(source).$(status).amplifier run data get storage elixir:$(value) $(source).$(status).2.amplifier

$execute if data storage elixir:$(value) $(source).$(status).2 if score @s $(source).$(status).duration >= @s $(source).$(status).runtime run scoreboard players operation @s $(source).$(status).duration -= @s $(source).$(status).runtime
$execute if data storage elixir:$(value) $(source).$(status).2 if score @s $(source).$(status).duration < @s $(source).$(status).runtime run scoreboard players set @s $(source).$(status).duration -1

$execute if data storage elixir:$(value) $(source).$(status).2 run function elixir:storage/remove/main {source:$(source),status:$(status),ssid:$(value)}