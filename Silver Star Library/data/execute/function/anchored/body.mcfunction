# this will anchor halfway between the eyes and feet
execute store result storage execute:body_position value double 1.62 run attribute @s scale get 0.5
$data modify storage execute:body_position run set value "$(run)"
function execute:internal/anchored/body with storage execute:body_position