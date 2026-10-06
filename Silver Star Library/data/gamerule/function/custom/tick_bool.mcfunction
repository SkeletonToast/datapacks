$execute as @a[scores={$(source).gamerule.$(gamerule)=-1..}] run function gamerule:set_bool {source:$(source),gamerule:$(gamerule)}
$scoreboard players set @a $(source).gamerule.$(gamerule) -2