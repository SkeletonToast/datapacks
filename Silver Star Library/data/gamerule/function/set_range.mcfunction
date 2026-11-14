# manually enable/disable
$data modify storage $(source):gamerule $(gamerule) set value $(value)

# setting phantom player
$scoreboard players set $$(source).gamerule.$(gamerule) value $(value)