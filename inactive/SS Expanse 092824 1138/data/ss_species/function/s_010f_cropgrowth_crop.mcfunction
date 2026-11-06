# if bone meal in offhand, will accelerate growth to maximum and use one bone meal
#   for saplings, will accelerate growth of all saplings of that type in a 3x3 square, so that it catches big trees too

$setblock ~ ~1 ~ $(block_age)
playsound minecraft:block.crop.break block @a
function ss_particles:composter_ring
xp add @s -1 points

# as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bone_meal"}]}]