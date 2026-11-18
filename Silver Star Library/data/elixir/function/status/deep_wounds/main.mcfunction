function ss_lib:fetch/health {s:"@s",bypass_check:true}

execute if score @s Health > @s elixir.deep_wounds.health run scoreboard players operation \
    @s generic_a = @s Health
execute if score @s Health > @s elixir.deep_wounds.health run scoreboard players operation \
    @s generic_a -= @s elixir.deep_wounds.health
execute if score @s Health > @s elixir.deep_wounds.health run function \
    parse:simple {score:generic_a,function:"elixir:status/deep_wounds/damage"}

execute if score @s Health < @s elixir.deep_wounds.health run scoreboard players operation @s elixir.deep_wounds.health = @s Health