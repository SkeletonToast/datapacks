# $execute store result storage elixir:status.deep_wounds result double 1 run \
    compute default float {type:"minecraft:avg",inputs:[$(health),$(max_health)]} 1
$data modify storage elixir:status.deep_wounds result set compute default float {type:"sub",left:{type:"minecraft:avg",inputs:[$(health),$(max_health)]},right:1}

function elixir:status/deep_wounds/alt/attributes with storage elixir:status.deep_wounds