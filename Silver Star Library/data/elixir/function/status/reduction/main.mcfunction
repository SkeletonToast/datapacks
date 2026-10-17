scoreboard players set @s[scores={elixir.generic.amplifier=11..}] elixir.generic.amplifier 10
scoreboard players operation @s elixir.generic.amplifier *= #const.50 value

function parse:score_append {score:elixir.generic.amplifier,function:"elixir:status/reduction/attributes",append:".",append_position:3}