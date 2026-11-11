# give your effects, change attributes, etc
execute as @a[scores={DamageTaken=1..}] run function parse:simple {score:elixir.beeful.amplifier,function:"elixir:status/beeful/begin_summon"}