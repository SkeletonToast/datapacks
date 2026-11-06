# see voyager

# HAPPY SMILE
# an exploration-based ability, that grants regeneration and XP whenever you're simply moving. It's meant to make exploration easier and more fun
# might have some Seismic Slam-esque ability, where you can spring over ledges.
#    it'll test if the block against your feet is solid, and the block against your face is air. then it'll very quickly grant high levitation and instantly cancel it
#    to simulate vaulting the block
# also has biome-specific abilities
#    maybe cave biomes grant night vision or smth
#    grants increased water breathing in ocean biomes
# grants protection when in a boat for fun :3
# double step height

scoreboard players set @a[scores={ability025=1..}] ability027 1
scoreboard players add @a[scores={ability025=1..}] trait003 1
effect give @a[scores={ability025=1..},predicate=ss_abilities:in_boat_or_cart] strength 1 1 true
effect give @a[scores={ability025=1..},predicate=ss_abilities:in_boat_or_cart] resistance 1 1 true