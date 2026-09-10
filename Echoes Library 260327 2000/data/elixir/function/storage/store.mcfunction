scoreboard players set @s elixir.storage.increment 0

$data modify storage elixir:$(value) $(source).$(status).stored.amplifier set value $(amplifier)
$data modify storage elixir:$(value) $(source).$(status).stored.duration set value $(duration)
$scoreboard players set @s elixir.storage.stored_amplifier $(amplifier)
$scoreboard players set @s elixir.storage.stored_duration $(duration)

$function elixir:storage/increment {ssid:$(value),source:$(source),status:$(status)}

$execute store result score @s $(source).$(status).duration run data get storage elixir:$(value) $(source).$(status).1.duration
$execute store result score @s $(source).$(status).amplifier run data get storage elixir:$(value) $(source).$(status).1.amplifier
$scoreboard players operation @s $(source).$(status).stacks = @s elixir.storage.increment