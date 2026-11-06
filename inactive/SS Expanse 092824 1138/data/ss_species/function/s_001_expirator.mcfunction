scoreboard players add @a[scores={species=001}] species001-02 0
tag @a[scores={species=001,species001-02=10..}] add UnlockedParrying
scoreboard players set @a[scores={species=001,species001-02=3..}] ParryChargeMax 300
execute as @a[scores={species=001,SoftRestOrRespawn=1}] run function ss_species:s_001f_attributeset
execute as @a[scores={species=001,species001-02=..3,TimeSinceDeath=1..},level=5..] unless entity @s[scores={species001-04=1..}] run scoreboard players set @s species001-04 1
execute as @a[scores={species=001,species001-02=..7,TimeSinceDeath=1..},level=10..] unless entity @s[scores={species001-04=1..}] run scoreboard players set @s species001-04 1
execute as @a[scores={species=001,species001-02=..11,TimeSinceDeath=1..},level=15..] unless entity @s[scores={species001-04=1..}] run scoreboard players set @s species001-04 1
execute as @a[scores={species=001,species001-02=..19,TimeSinceDeath=1..},level=20..] unless entity @s[scores={species001-04=1..}] run scoreboard players set @s species001-04 1
execute as @a[scores={species=001,species001-02=..25,TimeSinceDeath=1..},level=25..] unless entity @s[scores={species001-04=1..}] run scoreboard players set @s species001-04 1
execute as @a[scores={species=001,species001-02=30..,TimeSinceDeath=1..},level=30..] unless entity @s[scores={species001-04=1..}] run scoreboard players set @s species001-04 1

tag @a remove HoldingExpiratorShard
tag @a[scores={species=001},nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["species001"]}}}}] add HoldingExpiratorShard

tag @a[scores={species=001,species001-02=30..},tag=!Staggerable] add Staggerable
scoreboard players set @a[scores={species=001,species001-02=20..}] ability004 1
scoreboard players add @a[scores={species=001,species001-02=30..,OnGround=1},predicate=ss_library:is_sprinting] ability004-01 1
# scoreboard players add @a[scores={species=001,species001-02=40..,OnGround=1},predicate=ss_library:is_sprinting] ability004-01 2
scoreboard players set @a[scores={species=001,species001-02=20..,ability004-01=90..}] ability002 1
scoreboard players set @a[scores={species=001,species001-02=40..}] ability017 1

clear @a[scores={species=001,RestOrRespawn=2}] amethyst_shard[custom_data={Tags:["species001"]}]
scoreboard players set @a[scores={species=001,RestOrRespawn=1}] species001-04 0
scoreboard players remove @a[scores={species=001,TimeSinceDeath=1}] species001-02 1

scoreboard players set @a[scores={species=001,species001-04=1}] species001-03 1
scoreboard players add @a[scores={species=001,species001-04=1..}] species001-04 1
execute as @a[scores={species=001,species001-04=2}] run function ss_species:s_001f_giveshard

scoreboard players add @a[scores={TimeSinceDeath=0,species001-03=1}] species001-02 1
scoreboard players set @a[scores={TimeSinceDeath=0}] species001-03 0
execute as @a[scores={species001-02=..2}] run attribute @s minecraft:generic.max_health modifier remove species001_evolution_max_health

execute as @a[scores={species=001,RestOrRespawn=2}] run function ss_species:s_001f_attributeset

execute as @a[scores={species=001,WeaponWeight=0}] run attribute @s minecraft:generic.attack_speed modifier add species001_unarmed_attack_speed -3 add_value
execute as @a[scores={species=001,WeaponWeight=1..}] run attribute @s minecraft:generic.attack_speed modifier remove species001_unarmed_attack_speed

execute as @a[scores={species=001,species001-02=10..},nbt={Inventory:[{Slot:100b}]}] run attribute @s minecraft:generic.armor modifier add species001_helmet_armor_bonus 2 add_value
execute as @a[scores={species=001,species001-02=30..},nbt={Inventory:[{Slot:101b}]}] run attribute @s minecraft:generic.armor modifier add species001_chestplate_armor_bonus 3 add_value
execute as @a[scores={species=001,species001-02=20..},nbt={Inventory:[{Slot:102b}]}] run attribute @s minecraft:generic.armor modifier add species001_leggings_armor_bonus 3 add_value
execute as @a[scores={species=001,species001-02=10..},nbt={Inventory:[{Slot:103b}]}] run attribute @s minecraft:generic.armor modifier add species001_boots_armor_bonus 2 add_value

execute as @a[scores={species=001}] unless entity @s[nbt={Inventory:[{Slot:100b}]}] run attribute @s minecraft:generic.armor modifier remove species001_helmet_armor_bonus
execute as @a[scores={species=001}] unless entity @s[nbt={Inventory:[{Slot:101b}]}] run attribute @s minecraft:generic.armor modifier remove species001_chestplate_armor_bonus
execute as @a[scores={species=001}] unless entity @s[nbt={Inventory:[{Slot:102b}]}] run attribute @s minecraft:generic.armor modifier remove species001_leggings_armor_bonus
execute as @a[scores={species=001}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] run attribute @s minecraft:generic.armor modifier remove species001_boots_armor_bonus

tellraw @a[scores={species=001,species001-03=1,SingleSneakTime=20},tag=HoldingExpiratorShard] [{"text":"You are beginning Evolution, which will improve your abilities but drain your XP. The amount of XP drained depends on how much you've already Evolved.\n\nContinue crouching to continue Evolution.","color":"red"}]
execute as @a[scores={species=001,SingleSneakTime=20},tag=HoldingExpiratorShard] unless entity @s[scores={species001-03=1}] run tellraw @s [{"text":"You do not have enough XP to Evolve.","color":"red"}]
execute as @a[scores={species=001,species001-03=1,SingleSneakTime=200},tag=HoldingExpiratorShard] run function ss_species:s_001f_evolve

execute as @a[scores={species=001,species001-03=1,SingleSneakTime=50..},tag=HoldingExpiratorShard] at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 0.5 0.5
execute as @a[scores={species=001,species001-03=1,SingleSneakTime=100..},tag=HoldingExpiratorShard] at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 1 0.7
execute as @a[scores={species=001,species001-03=1,SingleSneakTime=150..},tag=HoldingExpiratorShard] at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 1.5 1
stopsound @a[scores={species=001,species001-03=1,SingleSneakTime=199},tag=HoldingExpiratorShard]

effect give @a[scores={species=001,species001-03=1,SingleSneakTime=120},tag=HoldingExpiratorShard] darkness 5 0 true
effect give @a[scores={species=001,species001-03=1,SingleSneakTime=120},tag=HoldingExpiratorShard] night_vision 5 0 true
effect give @a[scores={species=001,species001-03=1,SingleSneakTime=120},tag=HoldingExpiratorShard] nausea 7 0 true

scoreboard players set @a[scores={species=001,Food=20..,species001-02=20..}] recover_timer 1