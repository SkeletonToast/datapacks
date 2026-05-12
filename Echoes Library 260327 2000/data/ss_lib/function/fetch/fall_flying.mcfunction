$execute as $(s) unless score @s FallFlying matches -1 run return fail
$scoreboard players set $(s) FallFlying 0
$execute as $(s) run scoreboard players set @s[scores={OnGround=0},nbt={FallFlying:1b}] FallFlying 1