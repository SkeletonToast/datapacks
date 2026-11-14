$scoreboard players set #const.$(value) value $(value)
$execute if score #const.$(value) value matches $(value2) run return 3

$return run data get storage echoes:oaths.$(value) allies[$(value2)]