$data modify storage homestead:$(ssid) character.$(value).inventory set from entity @s Inventory

# this needs a lot more testing, mainly i need to figure out how to store it in a way that can also be accessed later
    # storing inventory is not difficulty, but since you can't directly modify playerdata, restoring it will be a lot harder