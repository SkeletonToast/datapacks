function ss_lib:fetch/moon_phase
scoreboard players operation @s generic_m = $moon_phase value

scoreboard players operation $day generic_a = $day value
scoreboard players add $day generic_a 1

title @a[tag=!InCombat,scores={Dimension=1}] title ["𝔐 𝔬 𝔯 𝔫 𝔦 𝔫 𝔤"]
title @a[tag=!InCombat,scores={Dimension=1}] subtitle ["- Day ",{"score":{"name":"$day","objective":"generic_a"}}," -"]
# title @a[scores={in_combat=1..}] title [""]
# title @a[scores={in_combat=1..}] subtitle ["Dawn of day ",{"score":{"name":"$day","objective":"value"}}]