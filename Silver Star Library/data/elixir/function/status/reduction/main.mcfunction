scoreboard players set @s[scores={elixir.generic.amplifier=11..}] elixir.generic.amplifier 10
scoreboard players operation @s elixir.generic.amplifier *= #const.50 value

function parse:decimal {score:elixir.generic.amplifier,function:"elixir:status/reduction/attributes",scale:0.001}