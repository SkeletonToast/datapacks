scoreboard players operation @s uuid_modulus = @s uuid_stored
scoreboard players add @s uuid_modulus 1
scoreboard players operation @s uuid_stored = @s uuid_modulus
function storage:uuid_modulus {"UUID":0}
