$scoreboard players set @a[scores={$(namespace).gamerule.$(gamerule)=$(upper_limit)..}] $(namespace).gamerule.$(gamerule) $(upper_limit)
$execute as @a[scores={$(namespace).gamerule.$(gamerule)=$(lower_limit)..}] run function gamerule:set_range {namespace:$(namespace),gamerule:$(gamerule),upper_limit:$(upper_limit),lower_limit:$(lower_limit)}
$scoreboard players set @a $(namespace).gamerule.$(gamerule) $(lower_limit)
$scoreboard players remove @a $(namespace).gamerule.$(gamerule) 1