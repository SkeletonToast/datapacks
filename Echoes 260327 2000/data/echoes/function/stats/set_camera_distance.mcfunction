attribute @s camera_distance modifier remove tact.camera_distance
$attribute @s camera_distance modifier add tact.camera_distance $(value) add_value

scoreboard players operation @s tact_camera_distance = @s generic_attribute