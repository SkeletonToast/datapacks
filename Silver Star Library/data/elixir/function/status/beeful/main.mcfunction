# give your effects, change attributes, etc
execute as @a[scores={DamageTaken=1..}] run function parse:score_unended {score:elixir.beeful.amplifier,function:"elixir:status/beeful/begin_summon"}