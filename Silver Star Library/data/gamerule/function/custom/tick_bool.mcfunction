$execute as @a[scores={ssl.permissions_level=4..}] unless score @s ssl.gamerule.query matches 0 if score $$(source).gamerule.$(gamerule) true matches 1 run tellraw @s ["$$(source).gamerule.$(gamerule) (",{"text":"boolean","color":"blue"},"): ",{"text":"true","color":"green"}]
$execute as @a[scores={ssl.permissions_level=4..}] unless score @s ssl.gamerule.query matches 0 unless score $$(source).gamerule.$(gamerule) true matches 1 run tellraw @s ["$$(source).gamerule.$(gamerule) (",{"text":"boolean","color":"blue"},"): ",{"text":"false","color":"red"}]
# $execute as @a[scores={ssl.permissions_level=4..}] unless score @s ssl.gamerule.query matches 0 run tellraw @s ["$$(source).gamerule.$(gamerule): ",{"text":"boolean","color":"blue"}]

$execute as @a[scores={$(source).gamerule.$(gamerule)=-1..}] run function gamerule:set_bool {source:$(source),gamerule:$(gamerule)}
$scoreboard players set @a $(source).gamerule.$(gamerule) -2

scoreboard players enable @a[scores={ssl.permissions_level=4..}] ssl.gamerule.query