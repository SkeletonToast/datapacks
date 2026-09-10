$scoreboard players add @a[scores={$(source).$(status).runtime=1..}] $(source).$(status).runtime 1
$execute as @a[scores={$(source).$(status).runtime=1..}] run function $(status_function)

$scoreboard players remove @a[scores={$(source).$(status).duration=1..}] $(source).$(status).duration 1
$execute as @a[scores={$(source).$(status).duration=0}] run function parse:score_unended_with_macros {function:"elixir:expiration",score:ssid,macros:"source:$(source),status:$(status)"}