execute at @s anchored feet positioned ^ ^ ^0.5 run function of_items:angel_weapons/gateway_sound

execute at @s anchored feet if block ^ ^ ^ #ss_lib:nonsolidblocks positioned ^ ^ ^0.25 positioned ~ ~-0.2 ~ run function ss_raycast:block {"particle":"execute unless entity @s","increment_distance":"1","max_lifetime":"5","run_on_success":"function of_items:angel_weapons/gateway_teleport"}
execute as @s[tag=!GatewayTeleport] at @s anchored feet if block ^ ^ ^ #ss_lib:nonsolidblocks positioned ^ ^ ^5 run function of_items:angel_weapons/gateway_teleport

execute as @s[scores={artifact_type=4}] run function of_items:angel_weapons/lycastr_item {"format":"item replace entity @s weapon.mainhand with"}
execute as @s[scores={artifact_type=-4}] run function of_items:angel_weapons/lycastr_item {"format":"item replace entity @s weapon.offhand with"}

tag @s remove GatewayTeleport