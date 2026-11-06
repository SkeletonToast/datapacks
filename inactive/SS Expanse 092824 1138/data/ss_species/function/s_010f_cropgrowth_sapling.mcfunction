# if bone meal in offhand, will accelerate growth to maximum and use one bone meal
#   for saplings, will accelerate growth of all saplings of that type in a 3x3 square, so that it catches big trees too

$execute unless block ~ ~ ~ $(block)[stage=1] run setblock ~ ~ ~ $(block)[stage=1]
playsound minecraft:block.crop.break block @a
function ss_particles:composter_ring
give @s bone_meal
xp add @s -2 points

# as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bone_meal"}]}]