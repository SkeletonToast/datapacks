$data modify storage elixir:$(ssid) $(source).$(status).$(value).amplifier set from storage elixir:$(ssid) $(source).$(status).stored.amplifier
$data modify storage elixir:$(ssid) $(source).$(status).$(value).duration set from storage elixir:$(ssid) $(source).$(status).stored.duration
$data remove storage elixir:$(ssid) $(source).$(status).stored