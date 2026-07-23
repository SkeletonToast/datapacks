effect give @a[scores={Dimension=1}] regeneration 3 255 true
effect give @a[scores={Dimension=1}] absorption 300 4 true
time set 23999
tellraw @a[scores={Dimension=1}] [{"text":"[💤] All players are sleeping, and the night has passed peacefully.","color":"gray"}]
execute if entity @a[predicate=ss_lib:is/thundering] run weather clear
function echoes:player/dawn

effect give @a[scores={Mind=50..}] minecraft:strength 300 0 false
effect give @a[scores={Mind=50..}] minecraft:haste 300 0 false
effect give @a[scores={Mind=50..}] minecraft:speed 300 0 false