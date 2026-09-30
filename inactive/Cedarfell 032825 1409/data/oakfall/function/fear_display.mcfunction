scoreboard players operation @s generic_a = @s of_fear
scoreboard players operation @s generic_b = @s of_fear
scoreboard players operation @s generic_c = @s 10
    scoreboard players operation @s generic_c *= @s 10

scoreboard players operation @s generic_a /= @s 10
scoreboard players operation @s generic_a /= @s 10
scoreboard players operation @s generic_a /= @s 10

scoreboard players operation @s generic_b /= @s 10
    scoreboard players operation @s generic_b %= @s generic_c

title @s[scores={generic_b=..9}] actionbar ["Fear: ",{"score":{"name":"*","objective":"generic_a"},"color":"#ae4bb1"},{"text":".0","color":"#ae4bb1"},{"score":{"name":"*","objective":"generic_b"},"color":"#ae4bb1"},{"text":"%","color":"#ae4bb1"}]
title @s[scores={generic_b=10..}] actionbar ["Fear: ",{"score":{"name":"*","objective":"generic_a"},"color":"#ae4bb1"},{"text":".","color":"#ae4bb1"},{"score":{"name":"*","objective":"generic_b"},"color":"#ae4bb1"},{"text":"%","color":"#ae4bb1"}]
    # title @s actionbar ["Fear: ",{"score":{"name":"*","objective":"generic_a"},"color":"#ae4bb1"},{"text":"%","color":"#ae4bb1"},{"text":" (","color":"gray"},{"score":{"name":"*","objective":"of_fear"},"color":"gray"},{"text":"/100000)","color":"gray"}]

scoreboard players set @s of_display_temp 0