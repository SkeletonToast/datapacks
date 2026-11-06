execute as @a[scores={species=017}] run attribute @s minecraft:generic.scale modifier add species017_scale -0.1 add_value
execute as @a[scores={species=017}] run attribute @s minecraft:player.sneaking_speed base set 0.7
# execute as @a[scores={species=017}] at @s unless entity @a[distance=..30,tag=!HasChangelingStone] run effect give @s invisibility 1 0 true

execute as @a[scores={species017-00=1..,DamageTaken=50..}] at @s positioned ~ ~1 ~ run function ss_particles:astral_spark

clear @a[scores={species017-00=1..,SoftRestOrRespawn=2}] echo_shard[custom_data={quick_destroy:true,Tags:["species017"]}]
execute as @a[scores={species017-00=1..,SoftRestOrRespawn=2}] run function ss_species:s_017f_givetransformstone
tag @a[tag=HasChangelingStone] remove HasChangelingStone
tag @a[scores={species017-00=1..},nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["species017"]}}}]}] add HasChangelingStone

effect give @a[scores={species017-00=1..,Food=..19},tag=HasChangelingStone] hunger 1 4 true

scoreboard players set @a[scores={species017-00=1..,SingleSneakTime=20},nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["species017"]}}}}] species 17
scoreboard players set @a[scores={species017-00=1..,SingleSneakTime=20},nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{Tags:["species017"]}}}]}] SoftRestOrRespawn 0

execute as @a[tag=HasChangelingStone,scores={species017-00=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["species017"]}}}}] run function ss_species:s_017f_unlockedspecies

scoreboard players remove @a[tag=HasChangelingStone,scores={species017-00=1..,ability018=1..}] species017-02 1
scoreboard players add @a[tag=HasChangelingStone,scores={species017-00=1..,ability017=1..}] species017-02 1
scoreboard players set @a[tag=HasChangelingStone,scores={species017-00=1..,ability018=0,ability017=0}] species017-02 0

execute as @a[tag=HasChangelingStone,scores={species017-00=1..,species017-02=-1}] run function ss_abilities:ab_018f_givestrongwings
execute as @a[tag=HasChangelingStone,scores={species017-00=1..,species017-02=1}] run function ss_abilities:ab_017f_givewings

execute as @a[tag=HasChangelingStone,scores={species017-00=1..,ability018=1..,FallFlying=1}] run scoreboard players operation @s species = @s ChangelingStoredSpecies
execute as @a[tag=HasChangelingStone,scores={species017-00=1..,ability017=1..,FallFlying=1}] run scoreboard players operation @s species = @s ChangelingStoredSpecies

scoreboard players set @a[scores={species017-00=1..,species=000}] species 17
scoreboard players set @a[scores={species017-00=1..,Health=..9}] species 17
scoreboard players set @a[scores={species017-00=1..,Food=..9}] species 17

execute as @a[scores={species017-00=1..}] unless score @s species = @s ChangelingStoredSpecies run function ss_library:attribute_reset
execute as @a[scores={species017-00=1..,species017-03=0}] at @s unless score @s species = @s ChangelingStoredSpecies positioned ~ ~1 ~ run function ss_particles:astral_burst
execute as @a[scores={species017-00=1..,species017-03=0}] at @s unless score @s species = @s ChangelingStoredSpecies run scoreboard players set @s species017-03 20
scoreboard players operation @a[scores={species017-00=1..}] ChangelingStoredSpecies = @s species

execute as @a[scores={species017-00=1..}] unless entity @s[scores={species017-03=0..}] run scoreboard players set @s species017-03 0
scoreboard players remove @a[scores={species017-03=1..}] species017-03 1
scoreboard players remove @a[scores={species017-00=1..}] species017-00 1