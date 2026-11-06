scoreboard players set @s CharacterSpecies 17
scoreboard players set @s ChangelingUnlockedSpecies 255

# execute unless entity @s[scores={PlayerDeaths=1..}] run scoreboard players set @s PlayerDeaths 0
# execute at @s run scoreboard players operation @s species = @p[tag=!chr_Lete,distance=..30] species
# execute as @s[scores={Dimension=2}] unless entity @s[scores={ycoord=..0}] run scoreboard players set @s species 12
# execute as @s[scores={species=012,ability018=1..}] unless entity @s[nbt={Inventory:[{tag:{Tags:["ability018"]}}]}] run function ss_abilities:ab_018f_givestrongwings
# execute as @s[scores={species=012,ability017=1..}] unless entity @s[nbt={Inventory:[{tag:{Tags:["ability017"]}}]}] run function ss_abilities:ab_017f_givewings
# execute as @s[scores={Dimension=1}] unless entity @s[scores={ycoord=..0}] run scoreboard players set @s species 22
# execute as @s[predicate=ss_species:in_forest] unless entity @s[scores={ycoord=..0}] run scoreboard players set @s species 10
# execute as @s[predicate=ss_species:on_mushroom_island] unless entity @s[scores={ycoord=..0}] run scoreboard players set @s species 9
# execute as @s[scores={ycoord=..0,Dimension=0}] run scoreboard players set @s species 8
# execute as @s[scores={InWater=1..}] run scoreboard players set @s species 11