# IDEAS FOR VOYAGER
# basically it's based on the idea of growing in power the more advancements you get, so it'll start off very weak and normal and then grow stronger the more you progress

# ADVANCEMENT BUFF IDEAS
# "How Did We Get Here": Enables immunity to negative potion effects
scoreboard players set @a[scores={species=020},advancements={nether/all_effects=true}] ability023 1

# "Caves & Cliffs" (freefall from build limit to bedrock): Grants permanent fall immunity ("Grace")
scoreboard players set @a[scores={species=020},advancements={adventure/fall_from_world_height=true}] ability001 1

# "A Balanced Diet": Grants Self Regeneration when at full hunger
scoreboard players set @a[scores={species=020,Health=..19,Food=20..},advancements={husbandry/balanced_diet=true}] recover_timer 1

# "Cover Me With Diamonds": enables armor "set bonuses"
scoreboard players set @a[scores={species=020},advancements={story/shiny_gear=true}] ability026 1

# "enchanter": enables Ability 22 permanently
scoreboard players set @a[scores={species=020},advancements={story/enchant_item=true}] trait003 1

# "Suit Up": Grants resistance when low on health or smth
effect give @a[scores={species=020,Health=..10},advancements={story/obtain_armor=true}] resistance 1 0 true

# "Monsters Hunted": Some kind of permanent strength boost
execute as @a[scores={species=020,Health=5..},advancements={adventure/kill_all_mobs=true}] if score @s Health < @s BaseMaxHealth run effect give @s strength 1 0 true
execute as @a[scores={species=020},advancements={adventure/kill_all_mobs=true}] if score @s Health >= @s BaseMaxHealth run effect give @s strength 1 1 true

# "The Parrots and the Bats" and "Best Friends Forever": enables Cavalry ability permanently
scoreboard players set @a[scores={species=020},advancements={husbandry/breed_an_animal=true,husbandry/tame_an_animal=true}] ability014 1

# "Adventuring Time": Grants Happy Smile in the Overworld
scoreboard players set @a[scores={species=020,Dimension=0},advancements={adventure/adventuring_time=true}] ability025 1
# "Hot Tourist Destinations": Grants Happy Smile in the Nether
scoreboard players set @a[scores={species=020,Dimension=1},advancements={nether/explore_nether=true}] ability025 1
# "The City at the End of the Game": Grants Happy Smile in the End
scoreboard players set @a[scores={species=020,Dimension=2},advancements={end/find_end_city=true}] ability025 1

# "Postmortal" once: grants a long-lasting period of increased stats upon respawning or using a Totem
#     use a scoreboard to test every Totem use after that
effect give @a[scores={species=020,TimeSinceDeath=2},advancements={adventure/totem_of_undying=true}] speed 60 1 true
effect give @a[scores={species=020,TimeSinceDeath=2},advancements={adventure/totem_of_undying=true}] strength 60 1 true
effect give @a[scores={species=020,TimeSinceDeath=2},advancements={adventure/totem_of_undying=true}] regeneration 60 1 true
effect give @a[scores={species=020,TimeSinceDeath=2},advancements={adventure/totem_of_undying=true}] absorption 60 4 true
effect give @a[scores={species=020,TimeSinceDeath=2},advancements={adventure/totem_of_undying=true}] resistance 10 4 true
effect clear @a[scores={species=020,TimeSinceDeath=2},advancements={adventure/totem_of_undying=true}] slowness
effect clear @a[scores={species=020,TimeSinceDeath=2},advancements={adventure/totem_of_undying=true}] weakness
effect clear @a[scores={species=020,TimeSinceDeath=2},advancements={adventure/totem_of_undying=true}] darkness
effect clear @a[scores={species=020,TimeSinceDeath=2},advancements={adventure/totem_of_undying=true}] blindness
effect clear @a[scores={species=020,TimeSinceDeath=2},advancements={adventure/totem_of_undying=true}] wither
effect give @a[scores={species=020,species020-02=1..},advancements={adventure/totem_of_undying=true}] speed 60 1 true
effect give @a[scores={species=020,species020-02=1..},advancements={adventure/totem_of_undying=true}] strength 60 1 true
effect give @a[scores={species=020,species020-02=1..},advancements={adventure/totem_of_undying=true}] regeneration 60 1 true
effect give @a[scores={species=020,species020-02=1..},advancements={adventure/totem_of_undying=true}] absorption 60 4 true
effect give @a[scores={species=020,species020-02=1..},advancements={adventure/totem_of_undying=true}] resistance 10 4 true
effect clear @a[scores={species=020,species020-02=1..},advancements={adventure/totem_of_undying=true}] slowness
effect clear @a[scores={species=020,species020-02=1..},advancements={adventure/totem_of_undying=true}] weakness
effect clear @a[scores={species=020,species020-02=1..},advancements={adventure/totem_of_undying=true}] darkness
effect clear @a[scores={species=020,species020-02=1..},advancements={adventure/totem_of_undying=true}] blindness
effect clear @a[scores={species=020,species020-02=1..},advancements={adventure/totem_of_undying=true}] wither
scoreboard players set @a[scores={species=020,species020-02=1..},advancements={adventure/totem_of_undying=true}] ability023 1200

scoreboard players set @a[scores={species020-02=1..}] species020-02 0

# "Sneak 100", "It Spreads", and having killed at least one Warden: 

# "Bullseye": Grants some sort of bow buff

# "Withering Heights": Enables the Hellregal class
# "Free the End": Enables the Dracospawn class

# "The Next Generation" (holding the dragon egg): idk but something big

# Completing a raid

# "Serious Dedication": gives you the Bloodied Scythe, uniquely tailored to you, so nobody else can wield it.

# needed scores:
#   used totem
#   killed warden