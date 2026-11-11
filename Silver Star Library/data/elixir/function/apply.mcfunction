function ssid:assign

$execute store result score @s generic_t run data get storage elixir:$(source) $(status).type

$tag @s add $(source).$(status).active

# monolevel status
$scoreboard players set @s[scores={generic_t=1}] generic_d $(duration)
$execute if score @s generic_t matches 1 unless score @s generic_d < @s $(source).$(status).duration run scoreboard players operation @s $(source).$(status).duration = @s generic_d
    # please note: this should be run before the below, since it uses generic scores. we don't want to accidentally mess these up with the parse function

# polylevel status
execute unless score @s generic_t matches 0 run return fail
$execute unless data storage elixir:$(source) $(status).max_amplifier run function parse:macros/simple {function:"elixir:storage/store",score:ssid,macros:"source:$(source),status:$(status),duration:$(duration),amplifier:$(amplifier)"}
$execute unless data storage elixir:$(source) $(status).max_amplifier run return fail

# BELOW: Code that should only be executed if you decide to have some sort of maximum amplifier system
    # obviously this code is not necessary for monolevel applications
$execute store result score @s generic_b run data get storage elixir:$(source) $(status).max_amplifier
$scoreboard players set @s generic_a $(amplifier)
execute if score @s generic_a > @s generic_b run scoreboard players operation @s generic_a = @s generic_b
$function parse:macros/simple {score:generic_a,function:"elixir:storage",macros:"source:'$(source)',status:'$(status)',duration:$(duration)"}