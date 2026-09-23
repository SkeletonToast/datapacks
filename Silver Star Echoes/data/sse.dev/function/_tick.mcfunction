function sse.dev:gamerule/_tick

scoreboard players enable @a checkStats
execute as @a[scores={checkStats=1..}] run function rp:check_stats
scoreboard players set @a[scores={checkStats=1..}] checkStats 0
scoreboard players set @a[scores={checkStats=..-1}] checkStats 0