function parse:score_unended_with_macros {score:elixir.generic.amplifier,function:"elixir:status/fortified/attributes",macros:"attribute:armor"}

scoreboard players operation @s elixir.generic.amplifier *= #const.10 value
function math:round {score:elixir.generic.amplifier,round:2,reduce:true}
function parse:score_unended_with_macros {score:elixir.generic.amplifier,function:"elixir:status/fortified/attributes",macros:"attribute:armor_toughness"}