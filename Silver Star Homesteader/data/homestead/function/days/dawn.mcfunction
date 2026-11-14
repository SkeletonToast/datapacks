scoreboard players add $homestead.calendar.total_days value 1
function homestead:days/calendar

title @a times 1t 60t 20t
function ss_lib:fetch/moon_phase

execute as @a[tag=!InCombat,scores={Dimension=1}] run function homestead:days/titles/dawn_monarch
# title @a[scores={in_combat=1..}] title [""]
# title @a[scores={in_combat=1..}] subtitle ["Dawn of day ",{"score":{"name":"$day","objective":"value"}}]