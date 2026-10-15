$execute as @a[scores={$(source).$(status).duration=1..}] run function ssid:assign

$scoreboard players remove @a[scores={$(source).$(status).duration=1..}] $(source).$(status).duration 1
$execute as @a[scores={$(source).$(status).duration=1..}] run function $(status_function)
$execute as @a[scores={$(source).$(status).duration=1..}] unless score @s $(source).$(status).stored_amplifier = @s $(source).$(status).amplifier run function $(expire_function)
$execute as @a[scores={$(source).$(status).duration=0}] run function $(expire_function)
$execute as @a[scores={$(source).$(status).duration=0}] run function parse:score_unended_with_macros {function:"elixir:expiration",score:ssid,macros:"source:$(source),status:$(status)"}
$execute as @a[scores={$(source).$(status).duration=1..}] run scoreboard players operation @s $(source).$(status).stored_amplifier = @s $(source).$(status).amplifier