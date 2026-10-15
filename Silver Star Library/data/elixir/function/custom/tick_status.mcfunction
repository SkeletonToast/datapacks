$execute as @a[scores={$(source).$(status).duration=1..}] run function ssid:assign

# clear status
$execute as @a[tag=elixir.clear_statuses,scores={$(source).$(status).duration=0..}] run function elixir:clear_status {source:$(source),status:$(status)}

# generic amplifier score set
$scoreboard players set @a[scores={$(source).$(status).duration=1..}] elixir.generic.amplifier 1
$execute as @a[scores={$(source).$(status).duration=1..}] run scoreboard players operation @s elixir.generic.amplifier += @s $(source).$(status).amplifier
$execute as @a[scores={$(source).$(status).duration=1..}] run function $(status_function)

# expiration
$execute as @a[scores={$(source).$(status).duration=1..}] unless score @s $(source).$(status).stored_amplifier = @s $(source).$(status).amplifier run function $(expire_function)
$execute as @a[scores={$(source).$(status).duration=0}] run function $(expire_function)
$execute as @a[scores={$(source).$(status).duration=0}] run function parse:score_unended_with_macros {function:"elixir:internal/expiration",score:ssid,macros:"source:$(source),status:$(status)"}
$execute as @a[scores={$(source).$(status).duration=1..}] run scoreboard players operation @s $(source).$(status).stored_amplifier = @s $(source).$(status).amplifier

$scoreboard players remove @a[scores={$(source).$(status).duration=1..}] $(source).$(status).duration 1