$execute at @s as @a[distance=..$(value)] store success score @s true run function echoes:player/oaths/is_ally {target:"@n[distance=0]"}
execute if score @s true matches 0 run return fail
$function echoes:player/rally/$(type)