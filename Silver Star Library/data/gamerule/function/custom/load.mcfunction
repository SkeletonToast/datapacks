$scoreboard objectives add $(source).gamerule.$(gamerule) trigger

scoreboard objectives add ssl.gamerule.query trigger

$execute unless data storage $(source):gamerule $(gamerule) run scoreboard players set $$(source).gamerule.$(gamerule) true $(default)
$execute unless data storage $(source):gamerule $(gamerule) run data modify storage $(source):gamerule $(gamerule) set value $(default)