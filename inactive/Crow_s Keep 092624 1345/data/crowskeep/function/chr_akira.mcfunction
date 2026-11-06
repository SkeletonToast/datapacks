scoreboard players set @s CharacterSpecies 11

execute as @s[predicate=ss_library:is_thundering] at @s if blocks ~ ~ ~ ~ 319 ~ ~ ~3 ~ masked run scoreboard players set @s InWater 1
execute as @s[predicate=ss_library:is_thundering] at @s if blocks ~ ~ ~ ~ 319 ~ ~ ~3 ~ masked run effect give @s speed 1 1 true

effect give @s[scores={ycoord=..42,InWater=2}] resistance 1 0 true
effect give @s[scores={ycoord=..22,InWater=2}] strength 1 0 true
effect give @s[scores={ycoord=..0,InWater=2}] strength 1 0 true

# extra stuff during thunderstorms
# siren call
# have fish or dolphins gravitate towards them
# have fish spawn
# summon guardian
# do something with shipwrecks or ruins