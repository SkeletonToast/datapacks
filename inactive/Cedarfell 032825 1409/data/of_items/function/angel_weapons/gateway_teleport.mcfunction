function of_items:angel_weapons/gateway_sound
execute positioned ^ ^ ^-0.5 run teleport @s ~ ~ ~
attribute @s gravity modifier add gateway_gravity -2 add_multiplied_total
    # execute unless entity @s[predicate=ss_lib:is_ascending] run attribute @s gravity modifier add gateway_gravity -2 add_multiplied_total
attribute @s fall_damage_multiplier modifier add fall_damage_immunity -1 add_multiplied_total

xp add @s -1 points
tag @s add GatewayTeleport