# give your effects, change attributes, etc
execute at @s[scores={DamageTaken=1..}] on attacker run function run:recur {r:10,f:"function elixir:status/beeful/summon_bee with entity @s"}