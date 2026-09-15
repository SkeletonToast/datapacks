execute as @a run scoreboard players operation @s talisman.slots = @s Mind
scoreboard players remove @a talisman.slots 25
scoreboard players operation @a talisman.slots /= @r 5
scoreboard players set @a[scores={talisman.slots=..-1}] talisman.slots 0
scoreboard players add @a[scores={Mind=15..}] talisman.slots 1
scoreboard players add @a[tag=Mind_feat_5] talisman.slots 1

execute as @a run scoreboard players operation @s talisman.scaling = @s Mind