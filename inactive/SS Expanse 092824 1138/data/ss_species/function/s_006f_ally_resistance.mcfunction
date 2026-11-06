effect give @s resistance 1 1 true
scoreboard players operation @s[scores={DamageResisted=1..}] species006-04 += @s DamageResisted
scoreboard players operation @p[distance=0] species006-04 += @s[scores={species006-04=1..}] species006-04
execute at @s[scores={species006-04=1..}] run function ss_particles:spark_burst
execute as @s[scores={species006-04=1..}] run function ss_particles:wax_off_triple_ring
    # just for future me: this particle function is run at the location of the feldspari who runs the function file we're currently in.

# couldn't get this to work
    # execute facing ~ ~1 ~ at @a[scores={species006-04=1..}] if score @p[distance=0] species006-urid = @s species006-urid run function ss_species:s_006f_ally_resistance_particles

# scoreboard players set @s species006-urid 0

tag @a[tag=FeldpsariAllyIneligible] remove FeldpsariAllyIneligible