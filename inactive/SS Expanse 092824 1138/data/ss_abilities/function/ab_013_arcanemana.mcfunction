clear @a[scores={ability013=1..,SoftRestOrRespawn=2}] enchanted_book[custom_data={Tags:["ability013"]}]
execute as @a[scores={ability013=1..,SoftRestOrRespawn=2}] run function ss_abilities:ab_013f_givearcanetome
tag @a[tag=ArcaneTomeMainhand] remove ArcaneTomeMainhand
tag @a[tag=ArcaneTomeOffhand] remove ArcaneTomeOffhand
tag @a[tag=ArcaneTomeFifthSlot] remove ArcaneTomeFifthSlot
tag @a[tag=ArcaneTomeInventory] remove ArcaneTomeInventory

tag @a[scores={ability013=1..},nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["ability013"]}}}]}] add ArcaneTomeInventory
tag @a[tag=ArcaneTomeInventory,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["ability013"]}}}}] add ArcaneTomeMainhand
tag @a[tag=ArcaneTomeInventory,nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{Tags:["ability013"]}}}]}] add ArcaneTomeOffhand
tag @a[tag=ArcaneTomeInventory,nbt={Inventory:[{Slot:4b,components:{"minecraft:custom_data":{Tags:["ability013"]}}}]}] add ArcaneTomeFifthSlot

execute as @a unless entity @s[scores={ability013-01=0..}] run scoreboard players set @s ability013-01 0

execute as @a[scores={ability013=1..},level=1..,tag=ArcaneTomeOffhand,predicate=ss_library:is_sneaking] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5
scoreboard players add @a[scores={ability013=1..},level=1..,tag=ArcaneTomeOffhand,predicate=ss_library:is_sneaking] ability013-01 50
xp add @a[scores={ability013=1..},level=1..,tag=ArcaneTomeOffhand,predicate=ss_library:is_sneaking] -1
scoreboard players add @a[scores={ability013=1..},level=2..,tag=ArcaneTomeOffhand,predicate=ss_library:is_sneaking] ability013-01 500
xp add @a[scores={ability013=1..},level=2..,tag=ArcaneTomeOffhand,predicate=ss_library:is_sneaking] -10
scoreboard players add @a[scores={ability013=1..},level=4..,tag=ArcaneTomeOffhand,predicate=ss_library:is_sneaking] ability013-01 2000
xp add @a[scores={ability013=1..},level=5..,tag=ArcaneTomeOffhand,predicate=ss_library:is_sneaking] -40
scoreboard players add @a[scores={ability013=1..},level=10..,tag=ArcaneTomeOffhand,predicate=ss_library:is_sneaking] ability013-01 5000
xp add @a[scores={ability013=1..},level=10..,tag=ArcaneTomeOffhand,predicate=ss_library:is_sneaking] -100
scoreboard players add @a[scores={ability013=1..},level=30..,tag=ArcaneTomeOffhand,predicate=ss_library:is_sneaking] ability013-01 25000
xp add @a[scores={ability013=1..},level=30..,tag=ArcaneTomeOffhand,predicate=ss_library:is_sneaking] -500
scoreboard players add @a[scores={ability013=1..},level=100..,tag=ArcaneTomeOffhand,predicate=ss_library:is_sneaking] ability013-01 50000
xp add @a[scores={ability013=1..},level=100..,tag=ArcaneTomeOffhand,predicate=ss_library:is_sneaking] -1000

execute as @a[scores={ability013=1..,ability013-01=100..},tag=ArcaneTomeMainhand,predicate=ss_library:is_sneaking] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5
execute as @a[scores={ability013=1..,ability013-01=100000..},level=40..,predicate=ss_library:is_sneaking,tag=ArcaneTomeMainhand] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"minecraft:mending":1}}}}}] run xp add @s 2000 points
scoreboard players remove @a[scores={ability013=1..,ability013-01=111600..},level=40..,predicate=ss_library:is_sneaking,tag=ArcaneTomeMainhand] ability013-01 100000
execute as @a[scores={ability013=1..,ability013-01=10000..},level=30..,predicate=ss_library:is_sneaking,tag=ArcaneTomeMainhand] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"minecraft:mending":1}}}}}] run xp add @s 200 points
scoreboard players remove @a[scores={ability013=1..,ability013-01=11600..},level=30..,predicate=ss_library:is_sneaking,tag=ArcaneTomeMainhand] ability013-01 10000
execute as @a[scores={ability013=1..,ability013-01=1000..},level=20..,predicate=ss_library:is_sneaking,tag=ArcaneTomeMainhand] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"minecraft:mending":1}}}}}] run xp add @s 20 points
scoreboard players remove @a[scores={ability013=1..,ability013-01=1600..},level=20..,predicate=ss_library:is_sneaking,tag=ArcaneTomeMainhand] ability013-01 1000
execute as @a[scores={ability013=1..,ability013-01=500..},level=10..,predicate=ss_library:is_sneaking,tag=ArcaneTomeMainhand] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"minecraft:mending":1}}}}}] run xp add @s 10 points
scoreboard players remove @a[scores={ability013=1..,ability013-01=600..},level=10..,predicate=ss_library:is_sneaking,tag=ArcaneTomeMainhand] ability013-01 500
execute as @a[scores={ability013=1..,ability013-01=100..},predicate=ss_library:is_sneaking,tag=ArcaneTomeMainhand] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"minecraft:mending":1}}}}}] run xp add @s 2 points
scoreboard players remove @a[scores={ability013=1..,ability013-01=100..},predicate=ss_library:is_sneaking,tag=ArcaneTomeMainhand] ability013-01 100

# outdated mending
    # execute as @s[scores={ability013=2..,ability013-01=1..},tag=ArcaneTomeInventory] if items entity @s weapon *[minecraft:enchantments~[{"enchantment":"minecraft:mending"}],minecraft:damage~{damage:{min:1}}] at @s unless entity @e[type=experience_orb,distance=..5] run summon experience_orb ~ ~ ~ {Value:1}
    # execute as @s[scores={ability013=2..,ability013-01=1..},tag=ArcaneTomeInventory] if items entity @s weapon *[minecraft:enchantments~[{"enchantment":"minecraft:mending"}],minecraft:damage~{damage:{min:1}}] run scoreboard players remove @s ability013-01 1
    # execute as @s[scores={ability013=2..},tag=ArcaneTomeInventory] if items entity @s weapon *[minecraft:enchantments~[{"enchantment":"minecraft:mending"}],minecraft:damage~{damage:{min:1}}] run title @s actionbar [{"text":"Arcane Mana: ","color":"gray"},{"score":{"name":"*","objective":"ability013-01"},"color":"aqua"}]

# updated item modifier
execute as @s[scores={ability013=2..,ability013-01=1..},tag=ArcaneTomeInventory] if items entity @s weapon *[minecraft:damage~{damage:{min:1}}] run title @s actionbar [{"text":"Arcane Mana: ","color":"gray"},{"score":{"name":"*","objective":"ability013-01"},"color":"aqua"}]
execute as @s[scores={ability013=2..,ability013-01=1..},tag=ArcaneTomeInventory] if items entity @s weapon *[minecraft:damage~{damage:{min:1}}] run item modify entity @s weapon ss_abilities:repair_one_thousandth
execute as @s[scores={ability013=2..,ability013-01=1..},tag=ArcaneTomeInventory] if items entity @s weapon *[minecraft:damage~{damage:{min:1}}] run scoreboard players remove @s ability013-01 1

scoreboard players set @a[scores={ability013-01=..0}] ability013-01 0
title @a[scores={ability013=1..},tag=ArcaneTomeMainhand] actionbar [{"text":"Arcane Mana: ","color":"gray"},{"score":{"name":"*","objective":"ability013-01"},"color":"aqua"}]
title @a[scores={ability013=1..},tag=ArcaneTomeOffhand] actionbar [{"text":"Arcane Mana: ","color":"gray"},{"score":{"name":"*","objective":"ability013-01"},"color":"aqua"}]