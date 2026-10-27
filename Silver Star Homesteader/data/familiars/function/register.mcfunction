tag @s add homestead.familiar
# this should be executed by the pet, because we can trace the owner from the pet, but can't easily trace the pet from the owner
attribute @s max_health modifier add homestead.familiars.buffer_health 100 add_value
# give health buffer
# assign to owner and update owner's familiar scores

execute at @s on owner run scoreboard players operation @n[tag=homestead.familiar,distance=0] homestead.familiars.owner = @s ssid
# tag @s remove homestead.familiar