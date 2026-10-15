function ssid:assign

$execute store result score @s generic_t run data get storage elixir:$(source) $(status).type

$tag @s add $(source).$(status).active

# monolevel status
$scoreboard players set @s[scores={generic_t=1}] generic_d $(duration)
$execute if score @s generic_t matches 1 unless score @s generic_d < @s $(source).$(status).duration run scoreboard players operation @s $(source).$(status).duration = @s generic_d
    # please note: this should be run before the below, since it uses generic scores. we don't want to accidentally mess these up with the parse function

# polylevel status
$execute if score @s generic_t matches 0 run function parse:score_unended_with_macros {function:"elixir:storage/store",score:ssid,macros:"source:$(source),status:$(status),duration:$(duration),amplifier:$(amplifier)"}