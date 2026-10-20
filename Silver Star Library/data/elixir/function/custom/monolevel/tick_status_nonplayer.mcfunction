$execute as @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=1..}] run function ssid:assign

# clear status
$execute as @e[tag=$(source).$(status).active,scores={elixir.clear_statuses=1..,$(source).$(status).duration=0..}] run scoreboard players set @s $(source).$(status).duration 0

# status functions
$scoreboard players add @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=1..}] elixir.active_statuses 1
$execute as @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=1..}] run function $(status_function)
$execute as @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=0}] run function $(expire_function)
$execute as @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=0}] run tag @s remove $(source).$(status).active
$execute as @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=0}] run score players set @s $(source).$(status).duration -1

$scoreboard players remove @e[tag=$(source).$(status).active,scores={$(source).$(status).duration=1..}] $(source).$(status).duration 1
scoreboard players remove @a[scores={elixir.clear_statuses=1..}] elixir.clear_statuses 1