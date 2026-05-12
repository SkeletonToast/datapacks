scoreboard objectives add urid dummy

execute store result score @s urid run random roll 1..99999
$execute as @a[scores={urid=1..}] unless entity @s[nbt={UUID:$(UUID)}] if score @s urid = @p[distance=0] urid if score @s SoftGameTime > @p[distance=0] SoftGameTime run scoreboard players add @s urid 1
$execute as @a[scores={urid=1..}] unless entity @s[nbt={UUID:$(UUID)}] if score @s urid = @p[distance=0] urid if score @s SoftGameTime < @p[distance=0] SoftGameTime run scoreboard players add @p[distance=0] urid 1
$execute as @a[scores={urid=1..}] unless entity @s[nbt={UUID:$(UUID)}] if score @s urid = @p[distance=0] urid if score @s SoftGameTime = @p[distance=0] SoftGameTime run scoreboard players remove @p[distance=0] urid 1