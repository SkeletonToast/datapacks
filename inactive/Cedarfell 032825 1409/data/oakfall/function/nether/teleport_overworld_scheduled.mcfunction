execute as @a[tag=UsingRift,nbt={Dimension:"oakfall:oakfall"}] at @s at @n[type=minecraft:interaction,tag=NetherRift,distance=..100] run tp @s ~ ~ ~
execute as @a[tag=UsingRift,nbt={Dimension:"oakfall:oakfall"}] at @s unless entity @n[type=minecraft:interaction,tag=NetherRift,distance=..100] positioned over motion_blocking run tp @s ~ ~ ~
execute at @a[tag=UsingRift,nbt={Dimension:"oakfall:oakfall"}] run playsound block.portal.travel master @a ~ ~ ~ 0.5 1

execute as @a[tag=UsingRift,nbt={Dimension:"oakfall:oakfall"}] if block ~ ~ ~ #ss_lib:nonsolidblocks run tag @s remove UsingRift