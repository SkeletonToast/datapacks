execute as @a run scoreboard players operation @s talisman.slots = @s Mind
scoreboard players remove @a talisman.slots 15
execute as @a run scoreboard players operation @s talisman.slots /= #const.15 value
scoreboard players set @a[scores={talisman.slots=..-1}] talisman.slots 0
scoreboard players add @a talisman.slots 1
scoreboard players add @a[tag=Mind_feat_5] talisman.slots 1

execute as @a run scoreboard players operation @s talisman.scaling = @s Mind