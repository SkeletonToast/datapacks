scoreboard players set @a[scores={species=023}] ability013 2
# scoreboard players set @a[scores={species=023}] ability020 1
scoreboard players set @a[scores={species=023}] ability026 1

#speed and damage
execute as @a[scores={species=023},predicate=ss_library:holding_hoe] run attribute @s minecraft:generic.attack_damage modifier add 7b2e7d55-9216-46da-959b-f71372edcf8e 3 add_value
execute as @a[scores={species=023},predicate=ss_library:holding_hoe] run attribute @s minecraft:generic.attack_speed modifier add 5bb360c3-b6d3-4a4d-9047-dc125f962975 -2 add_value
execute as @a[scores={species=023},predicate=ss_library:holding_hoe] run attribute @s minecraft:generic.movement_speed modifier add 5f0078cc-fa0f-4f29-a3f1-5da7b96a3727 0.4 add_multiplied_base
execute as @a[scores={species=023}] unless entity @s[predicate=ss_library:holding_hoe] run attribute @s minecraft:generic.attack_damage modifier remove 7b2e7d55-9216-46da-959b-f71372edcf8e
execute as @a[scores={species=023}] unless entity @s[predicate=ss_library:holding_hoe] run attribute @s minecraft:generic.attack_speed modifier remove 5bb360c3-b6d3-4a4d-9047-dc125f962975
execute as @a[scores={species=023}] unless entity @s[predicate=ss_library:holding_hoe] run attribute @s minecraft:generic.movement_speed modifier remove 5f0078cc-fa0f-4f29-a3f1-5da7b96a3727
# scoreboard players set @a[scores={species=023},predicate=ss_library:holding_hoe] ability024 1

#player kills trigger self-healing for 10 seconds
scoreboard players set @a[scores={species=023,species023-01=1..}] recover_timer 200

#mob kills trigger self-healing for 2 seconds
scoreboard players set @a[scores={species=023,species023-02=1..}] recover_timer 41

#dealing damage w scythe has similar effects to vampire knife
effect give @a[scores={species=023,DamageDealt=10..},predicate=ss_library:holding_hoe] minecraft:regeneration 1 2 true

# # active scythe effect: seismic slam
# scoreboard players set @a[level=1..,scores={species=023,ability020-00=0},predicate=ss_library:holding_hoe,nbt={Inventory:[{Slot:4b,tag:{Tags:["ability013"]}}]}] ability020-00 3
# execute as @a[level=1..,scores={species=023},predicate=ss_library:holding_hoe,nbt={Inventory:[{Slot:4b,tag:{Tags:["ability013"]}}]}] unless entity @s[scores={ability020-00=3}] run scoreboard players set @s ability020-00 1
# # execute as @a[scores={species=023,ability020-02=1..,OnGround=1}] unless entity @s[predicate=ss_library:is_sneaking] run scoreboard players remove @s ability013-01 500
# # execute as @a[scores={species=023,ability020-02=1..,OnGround=1}] unless entity @s[predicate=ss_library:is_sneaking] run tellraw @s [{"text":"Arcane Mana: ","color":"gray"},{"score":{"name":"*","objective":"ability013-01"},"color":"green"},{"text":" (-500)","color":"gray"}]
# # scoreboard players remove @a[scores={species=023,ability020-02=1..,OnGround=1},predicate=ss_library:is_sneaking] ability013-01 100
# # tellraw @a[scores={species=023,ability020-02=1..,OnGround=1},predicate=ss_library:is_sneaking] [{"text":"Arcane Mana: ","color":"gray"},{"score":{"name":"*","objective":"ability013-01"},"color":"green"},{"text":" (-100)","color":"gray"}]
# execute as @a[level=1..,scores={species=023,ability020-02=1..,OnGround=1}] unless entity @s[predicate=ss_library:is_sneaking] run xp add @s -7
# xp add @a[scores={species=023,ability020-02=1..,OnGround=1},predicate=ss_library:is_sneaking] -2

# TO-DO
    # potentially give a scythe on respawn that is then leveled up by dealing damage?