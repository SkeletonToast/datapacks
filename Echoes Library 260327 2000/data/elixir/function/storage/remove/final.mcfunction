$execute unless data storage elixir:$(ssid) $(source).$(status).$(value) run scoreboard players set @s $(source).$(status).runtime 0
$execute unless data storage elixir:$(ssid) $(source).$(status).$(value) run return fail

$data modify storage elixir:$(ssid) $(source).$(status).$(value0).amplifier set from storage elixir:$(ssid) $(source).$(status).$(value).amplifier
$data modify storage elixir:$(ssid) $(source).$(status).$(value0).duration set from storage elixir:$(ssid) $(source).$(status).$(value).duration

$data remove storage elixir:$(ssid) $(source).$(status).$(value)

$function elixir:storage/remove/main {source:$(source),status:$(status),ssid:$(ssid)}