$execute as @a[scores={$(source).$(status).duration=1..}] run function ssid:assign

$scoreboard players remove @a[scores={$(source).$(status).duration=1..}] $(source).$(status).duration 1
$execute as @a[scores={$(source).$(status).duration=1..}] run function $(status_function)
$execute as @a[scores={$(source).$(status).duration=0}] run function $(expire_function)
$execute as @a[scores={$(source).$(status).duration=0}] run tag @s remove $(source).$(status).active