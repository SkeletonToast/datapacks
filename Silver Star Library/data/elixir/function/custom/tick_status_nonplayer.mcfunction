$execute as @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=1..}] run function ssid:assign

# clear status
$execute as @e[tag=$(source).$(status).active,scores={elixir.clear_statuses=1..,$(source).$(status).duration=0..}] run function elixir:clear_status {source:$(source),status:$(status)}

# generic amplifier score set
$scoreboard players set @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=1..}] elixir.generic.amplifier 1
$execute as @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=1..}] run scoreboard players operation @s elixir.generic.amplifier += @s $(source).$(status).amplifier
$scoreboard players add @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=1..}] elixir.active_statuses 1
$execute as @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=1..}] run function $(status_function)

# expiration
$execute as @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=1..}] unless score @s $(source).$(status).stored_amplifier = @s $(source).$(status).amplifier run function $(expire_function)
$execute as @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=0}] run function $(expire_function)
$execute as @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=0}] run function parse:score_unended_with_macros {function:"elixir:internal/expiration",score:ssid,macros:"source:$(source),status:$(status)"}
$execute as @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=1..}] run scoreboard players operation @s $(source).$(status).stored_amplifier = @s $(source).$(status).amplifier

$scoreboard players remove @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=1..}] $(source).$(status).duration 1
scoreboard players remove @a[scores={elixir.clear_statuses=1..}] elixir.clear_statuses 1