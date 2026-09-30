# they can enhance potions, and maybe they don't have to pay the blaze powder fee or something?
    # you can replace the blaze powder slot whenever they interact with a brewing stand, but also log the amount of blaze powder in their inventory, and clear it if any more appear
# immunity to some potion effects
# perhaps they also have a base of 1 lapis when enchanting?

# maybe you could select some items like books, where the crafting recipe is revoked from non-scholars, and given to scholars
    # the special recipe gives more books or something
        # this wouldn't just be books, it'd be other scholarly things idk
            # books [DONE]
            # blaze powder [DONE]
            # fireworks [DONE]
            # sticks [DONE]
            # arrows [DONE]
            # spectral arrows [DONE]
            # golden apples cost only 4 gold [DONE]
            # enchanted golden apples [DONE]
            # torches [DONE]
            # stairs [DONE]
            # trapdoors [DONE]
            # planks [DONE]
            # wood (not logs) [DONE]
            # dyes [DONE]
            # smelting tools and armor [DONE]
        # they'd also be able to craft new potions (not actually possible)
            # combat potion: haste and strength
            # ironskin potion: absorption and resistance
            # miner's potion: night vision and haste
    # perhaps they'd also be able to do things like unpacking wool/nether wart/etc.

# FUCK SCHOLARS. FUCK THIS STUPID RECIPE SYSTEM. I HOPE I DIE IN A HOUSE FIRE.
# new scholar system: they'll have an area of expertise, where they're just really good
    # anatomy: more drops from mobs, extra damage or something
    # chemistry: immunity to potion effects, brewing stand buffs
    # gastronomy: extra food stuff, furnace buffs, idk
    # geology: stuff with ores
    # thaumaturgy: enchanting and mana maybe

# base stats
scoreboard players add @s[scores={ArmorType=6..9}] armor_proficiency 20
scoreboard players add @s Mind 5

# BATTLE TACTICIAN
scoreboard players operation @s weapon_proficiency += @s Mind
scoreboard players operation @s armor_proficiency += @s Mind
scoreboard players operation @s of_encumbrance -= @s Mind

# THAUMATURGY
execute as @s[scores={weapon_proficiency=..10,WeaponType=1..6}] if items entity @s weapon.mainhand *[minecraft:enchantments~[{}]] run scoreboard players add @s weapon_proficiency 10

# enchanting refund
give @s[gamemode=!creative,advancements={of_characters:scholar/enchant_item=true}] lapis_lazuli
xp add @s[gamemode=!creative,advancements={of_characters:scholar/enchant_item=true}] 1 levels

# CHEMISTRY
execute if score @s TotalHealth >= @s BaseMaxHealth run effect clear @s[scores={Food=20}] poison
execute if score @s TotalHealth >= @s BaseMaxHealth run effect clear @s[scores={Food=20}] wither
execute if score @s TotalHealth >= @s BaseMaxHealth run effect clear @s[scores={Food=20}] hunger
execute if score @s TotalHealth >= @s BaseMaxHealth run effect clear @s[scores={Food=20}] weakness
execute if score @s TotalHealth >= @s BaseMaxHealth run effect clear @s[scores={Food=20}] slowness
scoreboard players set @s bleeding_cooldown -1

# brewing stands
execute at @s[scores={scholar_brewing_stand=1..}] anchored eyes run function ss_raycast:block_specific {"particle":"execute if entity @s","block":"minecraft:brewing_stand","run_on_success":"data merge block ~ ~ ~ {Fuel:20b}","max_lifetime":"20","increment_distance":"0.5"}
    # execute at @s[scores={scholar_furnace=1..}] anchored eyes run function ss_raycast:block_specific {"particle":"particle minecraft:small_flame ~ ~ ~ 0 0 0 0 1 normal","block":"#of_characters:furnace","run_on_success":"function of_characters:homesteader/scholar/furnace_light","max_lifetime":"20","increment_distance":"0.5"}
execute if predicate {"condition":"minecraft:random_chance","chance":0.25} run give @s[gamemode=!creative,advancements={of_characters:scholar/brewed_potion=true}] nether_wart

    # # GASTRONOMY
    # scoreboard players operation @s scholar_furnace += @s scholar_blast_furnace
    # scoreboard players operation @s scholar_furnace += @s scholar_smoker

    # # better food restoration
    # execute if predicate {"condition":"minecraft:random_chance","chance":0.005} run effect give @s[scores={Food=..6}] saturation 1 0 true

# SCORE RESETS
scoreboard players set @a scholar_brewing_stand 0
scoreboard players set @a scholar_furnace 0
scoreboard players set @a scholar_blast_furnace 0
scoreboard players set @a scholar_smoker 0
advancement revoke @a[advancements={of_characters:scholar/brewed_potion=true}] only of_characters:scholar/brewed_potion
advancement revoke @a[advancements={of_characters:scholar/enchant_item=true}] only of_characters:scholar/enchant_item