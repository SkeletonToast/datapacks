title @a times 1t 60t 20t
function ss_lib:fetch/moon_phase
scoreboard players operation @s generic_m = $moon_phase value

scoreboard players operation $day generic_a = $day value
scoreboard players add $day generic_a 1

execute as @a[tag=!InCombat,scores={Dimension=1}] run function homesteader:days/dawn_monarch
# title @a[scores={in_combat=1..}] title [""]
# title @a[scores={in_combat=1..}] subtitle ["Dawn of day ",{"score":{"name":"$day","objective":"value"}}]