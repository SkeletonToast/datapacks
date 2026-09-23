execute as @a[scores={TimeSinceDeath=2..,Health=1..}] run scoreboard players operation @s deathx = @s xcoord
execute as @a[scores={TimeSinceDeath=2..,Health=1..}] run scoreboard players operation @s deathy = @s ycoord
execute as @a[scores={TimeSinceDeath=2..,Health=1..}] run scoreboard players operation @s deathz = @s zcoord
execute as @a[scores={GameTime=2..,TimeSinceDeath=1}] run tellraw @s ["You died at: ",{"score":{"name":"*","objective":"deathx"},"color":"gold"},", ",{"score":{"name":"*","objective":"deathy"},"color":"green"},", ",{"score":{"name":"*","objective":"deathz"},"color":"blue"}]

# call this file in your core file to display players' death coordinates when they respawn.
    # this requires the location fetch function to be run. by default, it's scheduled for every 10 ticks.