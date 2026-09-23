scoreboard players operation @s generic_a = @s elixir.fragile.amplifier
scoreboard players add @s generic_a 1
scoreboard players operation @s generic_a *= @s -1
function parse:score_unended_with_macros {score:generic_a,function:"elixir:status/fragile/attributes",macros:"attribute:armor"}

scoreboard players operation @s generic_a *= @s 10
function math:round {score:generic_a,round:2,reduce:true}
function parse:score_unended_with_macros {score:generic_a,function:"elixir:status/fragile/attributes",macros:"attribute:armor_toughness"}