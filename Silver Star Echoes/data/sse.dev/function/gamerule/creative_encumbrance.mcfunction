# manually enable/disable
execute if entity @s[scores={creativeEncumbrance=0..}] store result storage gamerule_creative_encumbrance toggle int 1 run scoreboard players get @s creativeEncumbrance

# if toggled
execute if entity @s[scores={creativeEncumbrance=0..}] run return fail
execute store result score @s creativeEncumbrance run data get storage gamerule_creative_encumbrance toggle
scoreboard players add @s creativeEncumbrance 1
scoreboard players set @s[scores={creativeEncumbrance=2..}] creativeEncumbrance 0
execute store result storage gamerule_creative_encumbrance toggle int 1 run scoreboard players get @s creativeEncumbrance

# setting phantom player
execute store result score $sse.gamerule.creative_encumbrance true run data get storage gamerule_creative_encumbrance toggle