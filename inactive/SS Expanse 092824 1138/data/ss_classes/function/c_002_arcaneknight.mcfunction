scoreboard players set @a[scores={Ghost=1..}] class002 0
scoreboard players set @a[scores={class002=1..}] ability013 2
scoreboard players set @a[scores={class002=1..}] ability014 1
scoreboard players set @a[scores={class002=1..}] ability016 1
scoreboard players set @a[scores={class002=1..},level=1..,predicate=ss_library:holding_sword,tag=ArcaneTomeFifthSlot] ability016-00 1
scoreboard players remove @a[scores={class002=1..},level=..0,predicate=ss_library:holding_sword,predicate=ss_library:is_sneaking,tag=ArcaneTomeFifthSlot] ability013-01 250
xp add @a[scores={class002=1..},level=..0,predicate=ss_library:holding_sword,predicate=ss_library:is_sneaking,tag=ArcaneTomeFifthSlot] 1 levels
tellraw @a[scores={class002=1..},level=..0,predicate=ss_library:holding_sword,predicate=ss_library:is_sneaking,tag=ArcaneTomeFifthSlot] [{"text":"Arcane Mana: ","color":"gray"},{"score":{"name":"*","objective":"ability013-01"},"color":"blue"},{"text":" (-250 Low Xp Penalty)","color":"gray"}]
tag @a[scores={class002=1..}] add UnlockedParrying

# scoreboard players remove @a[scores={class002=1..,ability013-01=250..,ability016-02=13}] ability013-01 250
# tellraw @a[scores={class002=1..,ability016-02=13}] [{"text":"Arcane Mana: ","color":"gray"},{"score":{"name":"*","objective":"ability013-01"},"color":"blue"},{"text":" (-250)","color":"gray"}]
xp add @a[scores={class002=1..,ability016-02=13},level=1..] -4

# swords
execute as @a[scores={class002=1..}] run attribute @s generic.attack_speed modifier remove class002_attack_speed
execute as @a[scores={class002=1..}] run attribute @s generic.attack_damage modifier remove class002_attack_damage
execute as @a[scores={class002=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run attribute @s generic.attack_speed modifier add class002_attack_speed 0.3 add_multiplied_total
execute as @a[scores={class002=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] run attribute @s generic.attack_speed modifier add class002_attack_speed 0.3 add_multiplied_total
execute as @a[scores={class002=1..},nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run attribute @s generic.attack_speed modifier add class002_attack_speed 0.4 add_multiplied_total
execute as @a[scores={class002=1..},nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run attribute @s generic.attack_damage modifier add class002_attack_damage 0.5 add_multiplied_total
execute as @a[scores={class002=1..},predicate=ss_library:holding_sword] run attribute @s generic.attack_speed modifier add class002_attack_speed 0.2 add_multiplied_total