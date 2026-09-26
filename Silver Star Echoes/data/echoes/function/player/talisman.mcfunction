execute as @a run scoreboard players operation @s talisman.slots = @s Mind
scoreboard players remove @a talisman.slots 15
execute as @a run scoreboard players operation @s talisman.slots /= #const.15 value
scoreboard players set @a[scores={talisman.slots=..-1}] talisman.slots 0
scoreboard players add @a talisman.slots 1
scoreboard players add @a[tag=Mind_feat_5] talisman.slots 1

scoreboard players set @a[scores={EchoDifficulty=1}] talisman.slots 0
scoreboard players set @a[scores={EchoDifficulty=2,talisman.slots=2..}] talisman.slots 1
scoreboard players set @a[scores={EchoDifficulty=3,talisman.slots=4..}] talisman.slots 3

execute as @a run scoreboard players operation @s talisman.scaling = @s Mind