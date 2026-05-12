execute positioned ^ ^ ^0.5 run particle small_flame ~ ~-0.3 ~ 0.1 0.1 0.1 0 10 normal @a
execute positioned ^ ^ ^0.7 run particle small_flame ~ ~-0.3 ~ 0.2 0.2 0.2 0 10 normal @a
$execute as @s[scores={OnGround=0}] positioned ^ ^ ^4 positioned ~ ~-1 ~ run function echoes:artifacts/missile_tome/raycast {"max_lifetime":"$(value)","radius":"3"}
$execute as @s[scores={OnGround=1}] positioned ^ ^ ^3 positioned ~ ~-0.3 ~ run function echoes:artifacts/missile_tome/raycast {"max_lifetime":"$(value)","radius":"2"}