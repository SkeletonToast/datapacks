title @a times 1t 60t 20t
execute as @a[tag=!InCombat,scores={Dimension=1}] run function homesteader:days/dusk_monarch
function ss_lib:fetch/moon_phase

# title @a[scores={in_combat=1..}] title [""]
# title @a[scores={in_combat=1..}] subtitle ["Dusk of night ",{"score":{"name":"$day","objective":"value"}}]