$tellraw @s [{"color":"gray","text":"$(type) You are "},{"color":"$(color)","text":"$(status)"},{"color":"gray","text":".$(append)"}]
execute at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.5 1

# execute at @s run playsound event.mob_effect.bad_omen player @s
# execute at @s run playsound minecraft:entity.allay.ambient_without_item player @s