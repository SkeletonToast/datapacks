$execute unless predicate {"type":"minecraft:random_chance","chance":0.$(value)} run return fail
$execute store result score @s generic_a run random value -$(value)..$(value)
$function parse:macros/simple {score:generic_a,function:"elixir:status/disorientation/rotate2",macros:"amplifier:$(value)"}