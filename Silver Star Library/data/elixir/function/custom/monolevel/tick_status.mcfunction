$execute as @a[scores={$(source).$(status).duration=1..}] run function ssid:assign

# clear status
$execute as @a[tag=elixir.clear_statuses,scores={$(source).$(status).duration=0..}] run scoreboard players set @s $(source).$(status).duration 0

# status functions
$scoreboard players remove @a[scores={$(source).$(status).duration=1..}] $(source).$(status).duration 1
$execute as @a[scores={$(source).$(status).duration=1..}] run function $(status_function)
$execute as @a[scores={$(source).$(status).duration=0}] run function $(expire_function)
$execute as @a[scores={$(source).$(status).duration=0}] run tag @s remove $(source).$(status).active
$execute as @a[scores={$(source).$(status).duration=0}] run score players set @s $(source).$(status).duration -1