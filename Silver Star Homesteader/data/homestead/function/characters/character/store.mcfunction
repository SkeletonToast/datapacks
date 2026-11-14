$data modify storage homestead:$(ssid) character.$(value).inventory set from entity @s Inventory
$execute store result storage homestead:$(ssid) character.$(value).age int 1 run scoreboard players get @s character.age
$execute store result storage homestead:$(ssid) character.$(value).height int 1 run scoreboard players get @s character.height
$execute store result storage homestead:$(ssid) character.$(value).gender int 1 run scoreboard players get @s character.gender
$execute store result storage homestead:$(ssid) character.$(value).birthday int 1 run scoreboard players get @s character.birthday

# this needs a lot more testing, mainly i need to figure out how to store it in a way that can also be accessed later
    # storing inventory is not difficulty, but since you can't directly modify playerdata, restoring it will be a lot more complex