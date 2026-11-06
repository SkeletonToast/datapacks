execute as @a unless entity @s[predicate=ss_library:is_sneaking] run scoreboard players set @s species024-01 0

execute as @a[scores={species=024},predicate=ss_library:is_sneaking,level=1..] unless entity @s[nbt={Inventory:[{id:"minecraft:snowball"}]}] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run xp add @s -1
execute as @a[scores={species=024},predicate=ss_library:is_sneaking] unless entity @s[level=1..] unless entity @s[nbt={Inventory:[{id:"minecraft:snowball"}]}] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run damage @s 1 freeze
execute as @a[scores={species=024},predicate=ss_library:is_sneaking] unless entity @s[nbt={Inventory:[{id:"minecraft:snowball"}]}] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run function ss_species:s_024f_givesnowball

#enable for block outlining stuff
# execute as @a[scores={species=024},nbt={Inventory:[{Slot:-106b,tag:{Tags:["species024"]}}]}] unless entity @s[nbt={SelectedItem:{}}] run function ss_species:s_024f_blockdetection

execute as @e[type=snowball,nbt={Item:{tag:{Tags:["species024"]}}}] at @s positioned over motion_blocking run function ss_species:s_024f_blockreplace
# kill @e[type=snowball,nbt={Item:{tag:{Tags:["species024"]}}},scores={Age=20..}]

# execute as @a[scores={species=024}] at @s if block ~ ~ ~ powder_snow run 