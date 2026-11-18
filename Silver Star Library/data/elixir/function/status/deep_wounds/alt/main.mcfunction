function ss_lib:fetch/health {s:"@s",bypass_check:true}
function ss_lib:fetch/health_attributes {s:"@s",bypass_check:true}

# if this ends up working better, instead of subtracting 1 from the quotient of health and maxhealth, just use this
# scoreboard players operation @s generic_h = @s MaxHealth
# scoreboard players operation @s generic_h -= @s Health
# execute store result storage elixir:status.deep_wounds health float 1 run scoreboard players get @s generic_h
    # probably just set it so that it damages you if you go above start health actually lmfao

execute store result storage elixir:status.deep_wounds health float 1 run scoreboard players get @s Health
execute store result storage elixir:status.deep_wounds max_health int 1 run scoreboard players get @s MaxHealth
    # this can be an int because it's the divisor
function elixir:status/deep_wounds/alt/compute with storage elixir:status.deep_wounds