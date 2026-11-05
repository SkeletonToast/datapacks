# ignore_in_combat termination
$execute if score $true true matches $(ignore_in_combat) as @s[tag=InCombat,scores={in_combat=0..}] \
    unless score @s in_combat matches $(value).. run scoreboard players set @s in_combat $(value)
$execute if score $true true matches $(ignore_in_combat) as @s[tag=InCombat] run return fail

tag @s add entering_combat
execute as @s[tag=!InCombat] run function echoes:player/combat/enter/message
$scoreboard players add @s in_combat $(value)

# chain IF affected players have less than half chainer's Tact (up to 60 Tact)
scoreboard players operation @s generic_t = @s Tact
scoreboard players operation @s generic_t /= #const.2 value
    scoreboard players set @s[scores={generic_t=31..}] generic_t 30
$execute at @s as @a[tag=!entering_combat,distance=..$(chain_distance)] if score @s Tact >= @p[distance=0,tag=entering_combat] generic_t run function echoes:player/combat/enter {value:$(value),ignore_in_combat:$(ignore_in_combat),chain_distance:$(chain_distance)}
tag @s remove entering_combat