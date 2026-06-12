scoreboard players operation @s Renown = @s EchoLevel
scoreboard players operation @s Renown += @s Strength
scoreboard players operation @s Renown += @s Dexterity
scoreboard players operation @s Renown += @s Mind
scoreboard players operation @s Renown += @s Tact
scoreboard players operation @s Renown += @s Resolve
scoreboard players operation @s Renown += @s Vitality
scoreboard players operation @s Renown += @s Soul

# calculating highest stat
scoreboard players operation @s generic_a = @s Strength
execute if score @s Dexterity > @s generic_a run scoreboard players operation @s generic_a = @s Dexterity
execute if score @s Mind > @s generic_a run scoreboard players operation @s generic_a = @s Mind
execute if score @s Tact > @s generic_a run scoreboard players operation @s generic_a = @s Tact
execute if score @s Resolve > @s generic_a run scoreboard players operation @s generic_a = @s Resolve
execute if score @s Vitality > @s generic_a run scoreboard players operation @s generic_a = @s Resolve
execute if score @s Soul > @s generic_a run scoreboard players operation @s generic_a = @s Soul

scoreboard players operation @s Renown += @s generic_a