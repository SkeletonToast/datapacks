# if seeds in offhand, will replant seeds on available farmland

execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:beetroot_seeds"}]}] if block ~ ~1 ~ #ss_library:air run function ss_species:s_010f_replant2 {"block":"beetroots","item":"beetroot_seeds"}
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot"}]}] if block ~ ~1 ~ #ss_library:air run function ss_species:s_010f_replant2 {"block":"carrots","item":"carrot"}
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:potato"}]}] if block ~ ~1 ~ #ss_library:air run function ss_species:s_010f_replant2 {"block":"potatoes","item":"potato"}
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:wheat_seeds"}]}] if block ~ ~1 ~ #ss_library:air run function ss_species:s_010f_replant2 {"block":"wheat","item":"wheat_seeds"}