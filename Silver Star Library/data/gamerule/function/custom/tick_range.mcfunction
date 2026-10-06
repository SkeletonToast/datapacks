$scoreboard players set @a[scores={$(source).gamerule.$(gamerule)=$(upper_limit)..}] $(source).gamerule.$(gamerule) $(upper_limit)
$execute as @a[scores={$(source).gamerule.$(gamerule)=$(lower_limit)..}] run function gamerule:set_range {source:$(source),gamerule:$(gamerule)}
$scoreboard players set @a $(source).gamerule.$(gamerule) $(lower_limit)
$scoreboard players remove @a $(source).gamerule.$(gamerule) 1