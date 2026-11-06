scoreboard players set @a[scores={Ghost=1..}] class004 0
scoreboard players set @a[scores={class004=1..}] ability013 2
scoreboard players set @a[scores={class004=1..}] ability014 1

# arrow give
# execute as @a[scores={class004=1..,ability013-01=50..},predicate=ss_library:holding_bow_or_crossbow] unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:spectral_arrow"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:tipped_arrow"}]}] run function ss_classes:c_004f_generatearrow
# execute as @a[scores={class004=1..,ability013-01=50..},predicate=ss_library:holding_bow_or_crossbow_offhand] unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:spectral_arrow"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:tipped_arrow"}]}] run function ss_classes:c_004f_generatearrow

execute as @a[scores={class004=1..,ability013-01=50..},predicate=ss_library:holding_bow_or_crossbow] unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:spectral_arrow"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:tipped_arrow"}]}] run function ss_classes:c_004f_generatearrow
execute as @a[scores={class004=1..,ability013-01=50..},predicate=ss_library:holding_bow_or_crossbow_offhand] unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:spectral_arrow"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:tipped_arrow"}]}] run function ss_classes:c_004f_generatearrow

# arrow swap
# execute as @a[scores={class004=1..},nbt={Inventory:[{id:"minecraft:arrow"}]}] run function ss_classes:c_004f_givearcanearrow
# execute as @a[scores={class004=1..},nbt={Inventory:[{id:"minecraft:arrow"}]}] run clear @s arrow 1

# arrows
execute as @e[type=#minecraft:arrows,scores={Age=..100}] at @s on origin if entity @s[scores={class004=1..}] run particle minecraft:white_smoke ~ ~ ~
execute as @e[type=#minecraft:arrows,scores={Age=..100}] at @s on origin if entity @s[scores={class004=1..}] as @e[type=!#ss_library:not_alive,distance=..3] unless entity @s[scores={class004=1..}] run effect give @s glowing 5 0 true
execute as @e[type=#minecraft:arrows,scores={Age=1}] at @s on origin if entity @s[scores={class004=1..},level=1..,predicate=ss_library:is_sneaking,tag=ArcaneTomeFifthSlot] as @e[type=#minecraft:arrows,distance=0] run function ss_classes:c_004f_croucharrowassignment
execute as @e[type=#minecraft:arrows,tag=class004-01] run function ss_classes:c_004f_croucharrow

execute as @a[scores={UsingBow=0}] run attribute @s minecraft:generic.movement_speed modifier remove class004_bow_movement_speed
execute as @a[scores={class004=1..,OnGround=1,UsingBow=1..}] run attribute @s minecraft:generic.movement_speed modifier add class004_bow_movement_speed 0.5 add_value
execute as @a[predicate=ss_library:is_sneaking] run attribute @s minecraft:generic.movement_speed modifier remove class004_bow_movement_speed

# scoreboard players set @a[scores={class004-01=1..}] class004-01 0