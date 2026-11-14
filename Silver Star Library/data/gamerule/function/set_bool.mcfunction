$scoreboard players set #const.$(value) value $(value)
$execute if score #const.$(value) value matches 2.. run function gamerule:set_bool {source:$(source),gamerule:$(gamerule),value:1}
$execute if score #const.$(value) value matches 2.. run return fail

$data modify storage $(source):gamerule $(gamerule) set value $(value)
$execute store result score $$(source).gamerule.$(gamerule) true run data get storage $(source):gamerule $(gamerule)