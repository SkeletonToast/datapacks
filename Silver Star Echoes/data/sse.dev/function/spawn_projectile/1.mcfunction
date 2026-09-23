$summon $(projectile)
$data modify entity @n[type=$(projectile)] Rotation set from entity @s Rotation
$execute summon area_effect_cloud run function sse.dev:spawn_projectile/2 {"projectile":"$(projectile)"}
# $clear @s firework_rocket[custom_data={Tags:["species025"]}] $(cost)