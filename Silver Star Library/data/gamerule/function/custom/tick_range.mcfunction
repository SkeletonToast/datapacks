$execute as @a[scores={ssl.permissions_level=4..}] unless score @s ssl.gamerule.query matches 0 run tellraw @s ["$$(source).gamerule.$(gamerule) (",{"text":"range ($(lower_limit), $(upper_limit))","color":"gold"},"): ",{"score":{"name":"$$(source).gamerule.$(gamerule)","objective":"value"},"color":"gold"}]
# $execute as @a[scores={ssl.permissions_level=4..}] unless score @s ssl.gamerule.query matches 0 run tellraw @s ["$$(source).gamerule.$(gamerule): range ($(lower_limit), $(upper_limit))"]

$scoreboard players set @a[scores={$(source).gamerule.$(gamerule)=$(upper_limit)..}] $(source).gamerule.$(gamerule) $(upper_limit)
$execute as @a[scores={$(source).gamerule.$(gamerule)=$(lower_limit)..}] run function gamerule:set_range {source:$(source),gamerule:$(gamerule)}
$scoreboard players set @a $(source).gamerule.$(gamerule) $(lower_limit)
$scoreboard players remove @a $(source).gamerule.$(gamerule) 1

scoreboard players enable @a[scores={ssl.permissions_level=4..}] ssl.gamerule.query