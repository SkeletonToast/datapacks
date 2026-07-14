scoreboard players operation $Day generic_a = $Day Day
scoreboard players add $Day generic_a 1

title @a[tag=!InCombat,scores={Dimension=1}] title ["𝔐 𝔬 𝔯 𝔫 𝔦 𝔫 𝔤"]
title @a[tag=!InCombat,scores={Dimension=1}] subtitle ["- Day ",{"score":{"name":"$Day","objective":"generic_a"}}," -"]
# title @a[scores={in_combat=1..}] title [""]
# title @a[scores={in_combat=1..}] subtitle ["Dawn of day ",{"score":{"name":"$Day","objective":"Day"}}]