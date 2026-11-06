# 128: homarach
# 64: draconian
# 32: incarnate
# 16: fawn
# 8: myconid
# 4: avian
# 2: kamensh
# 1: passidian

execute unless entity @s[scores={PlayerDeaths=1..}] run scoreboard players set @s PlayerDeaths 0
execute at @s run scoreboard players operation @s species = @p[tag=!HasChangelingStone,tag=!Soulless,distance=..0.5] species
execute at @s as @a[tag=!HasChangelingStone,tag=!Soulless,distance=..30,scores={DamageTaken=1..}] at @s on attacker if entity @s[tag=HasChangelingStone,scores={species017-00=1..}] run scoreboard players operation @s species = @p[tag=!HasChangelingStone,tag=!Soulless,distance=0,scores={DamageTaken=1..}] species

scoreboard players operation @s ChangelingVariable = @s ChangelingUnlockedSpecies

    scoreboard players add @s[scores={ChangelingVariable=..127,species=007}] ChangelingUnlockedSpecies 128
    scoreboard players remove @s[scores={ChangelingVariable=128..,species=007}] ChangelingVariable 128
    scoreboard players add @s[scores={ChangelingVariable=..63,species=012}] ChangelingUnlockedSpecies 64
    scoreboard players remove @s[scores={ChangelingVariable=64..,species=012}] ChangelingVariable 64
    scoreboard players add @s[scores={ChangelingVariable=..31,species=022}] ChangelingUnlockedSpecies 32
    scoreboard players remove @s[scores={ChangelingVariable=32..,species=022}] ChangelingVariable 32
    scoreboard players add @s[scores={ChangelingVariable=..15,species=010}] ChangelingUnlockedSpecies 16
    scoreboard players remove @s[scores={ChangelingVariable=16..,species=010}] ChangelingVariable 16
    scoreboard players add @s[scores={ChangelingVariable=..7,species=009}] ChangelingUnlockedSpecies 8
    scoreboard players remove @s[scores={ChangelingVariable=8..,species=009}] ChangelingVariable 8
    scoreboard players add @s[scores={ChangelingVariable=..3,species=025}] ChangelingUnlockedSpecies 4
    scoreboard players remove @s[scores={ChangelingVariable=4..,species=025}] ChangelingVariable 4
    scoreboard players add @s[scores={ChangelingVariable=..1,species=008}] ChangelingUnlockedSpecies 2
    scoreboard players remove @s[scores={ChangelingVariable=2..,species=008}] ChangelingVariable 2
    scoreboard players add @s[scores={ChangelingVariable=..0,species=011}] ChangelingUnlockedSpecies 1
    scoreboard players remove @s[scores={ChangelingVariable=1..,species=011}] ChangelingVariable 1

scoreboard players operation @s ChangelingVariable = @s ChangelingUnlockedSpecies

    # scoreboard players add @s[scores={ChangelingVariable=..127,species=007}] ChangelingUnlockedSpecies 128
    scoreboard players remove @s[scores={ChangelingVariable=128..,species=007}] ChangelingVariable 128
    scoreboard players add @s[scores={ChangelingVariable=..63},advancements={end/kill_dragon=true}] ChangelingUnlockedSpecies 64
    scoreboard players remove @s[scores={ChangelingVariable=64..},advancements={end/kill_dragon=true}] ChangelingVariable 64
    scoreboard players add @s[scores={ChangelingVariable=..31,ChangelingKilledWither=1..}] ChangelingUnlockedSpecies 32
    scoreboard players remove @s[scores={ChangelingVariable=32..,ChangelingKilledWither=1..}] ChangelingVariable 32
    # scoreboard players add @s[scores={ChangelingVariable=..15,species=010}] ChangelingUnlockedSpecies 16
    scoreboard players remove @s[scores={ChangelingVariable=16..,species=010}] ChangelingVariable 16
    # scoreboard players add @s[scores={ChangelingVariable=..7,species=009}] ChangelingUnlockedSpecies 8
    scoreboard players remove @s[scores={ChangelingVariable=8..,species=009}] ChangelingVariable 8
    scoreboard players add @s[scores={ChangelingVariable=..3},nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] ChangelingUnlockedSpecies 4
    scoreboard players remove @s[scores={ChangelingVariable=4..},nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] ChangelingVariable 4
    scoreboard players add @s[scores={ChangelingVariable=..1,ycoord=..0,Dimension=0},predicate=ss_species:species017_pickaxe] ChangelingUnlockedSpecies 2
    scoreboard players remove @s[scores={ChangelingVariable=2..,ycoord=..0,Dimension=0},predicate=ss_species:species017_pickaxe] ChangelingVariable 2
    scoreboard players add @s[scores={ChangelingVariable=..0,ChangelingKilledElderGuardian=1..}] ChangelingUnlockedSpecies 1
    scoreboard players remove @s[scores={ChangelingVariable=1..,ChangelingKilledElderGuardian=1..}] ChangelingVariable 1

scoreboard players operation @s ChangelingVariable = @s ChangelingUnlockedSpecies

    scoreboard players set @s[scores={ChangelingVariable=128..},predicate=ss_species:in_mineshaft] species 7
    scoreboard players remove @s[scores={ChangelingVariable=128..},predicate=ss_species:in_mineshaft] ChangelingVariable 128
    scoreboard players set @s[scores={ChangelingVariable=64..,Dimension=2}] species 12
    scoreboard players remove @s[scores={ChangelingVariable=64..,Dimension=2}] ChangelingVariable 64
    scoreboard players set @s[scores={ChangelingVariable=32..,Dimension=1}] species 22
    scoreboard players remove @s[scores={ChangelingVariable=32..,Dimension=1}] ChangelingVariable 32
    scoreboard players set @s[scores={ChangelingVariable=16..},predicate=ss_species:in_forest] species 10
    scoreboard players remove @s[scores={ChangelingVariable=16..},predicate=ss_species:in_forest] ChangelingVariable 16
    scoreboard players set @s[scores={ChangelingVariable=8..},predicate=ss_species:on_mushroom_island] species 9
    scoreboard players remove @s[scores={ChangelingVariable=8..},predicate=ss_species:on_mushroom_island] ChangelingVariable 8
    scoreboard players set @s[scores={ChangelingVariable=8..},predicate=ss_species:in_caves] species 9
    scoreboard players remove @s[scores={ChangelingVariable=8..},predicate=ss_species:in_caves] ChangelingVariable 8
    scoreboard players set @s[scores={ChangelingVariable=4..},nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] species 25
    scoreboard players remove @s[scores={ChangelingVariable=4..},nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] ChangelingVariable 4
    scoreboard players set @s[scores={ChangelingVariable=2..,ycoord=..0,Dimension=0}] species 8
    scoreboard players remove @s[scores={ChangelingVariable=2..,ycoord=..0,Dimension=0}] ChangelingVariable 2
    scoreboard players set @s[scores={ChangelingVariable=1..,InWater=1..}] species 11
    scoreboard players remove @s[scores={ChangelingVariable=1..,InWater=1..}] ChangelingVariable 1