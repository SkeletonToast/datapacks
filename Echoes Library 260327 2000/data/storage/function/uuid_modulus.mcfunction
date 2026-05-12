$scoreboard players operation @s uuid$(UUID) %= @s 10
scoreboard players remove @s uuid_modulus 1
$execute if entity @s[scores={uuid_modulus=1..}] run function storage:uuid_modulus {"UUID":$(UUID)}

$execute unless entity @s[scores={uuid_modulus=..0,uuid$(UUID)=-9..9}] run function storage:uuid_store