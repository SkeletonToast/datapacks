# "Void Immunity"

# actual ability
execute as @a store result score @s ability007-01 run data get entity @s Pos[1]
effect give @a[scores={ability007=1..,Dimension=0,ability007-02=0,ability007-01=..-65}] minecraft:levitation 1 60 true
effect give @a[scores={ability007=1..,Dimension=0,ability007-02=..1,ability007-01=..-65}] minecraft:levitation 2 29 true
effect give @a[scores={ability007=1..,Dimension=0,ability007-02=0,ability007-01=..-65}] minecraft:slow_falling 7 0 true
effect give @a[scores={ability007=1..,Dimension=1,ability007-02=0,ability007-01=..-1}] minecraft:levitation 1 60 true
effect give @a[scores={ability007=1..,Dimension=1,ability007-02=..1,ability007-01=..-1}] minecraft:levitation 2 29 true
effect give @a[scores={ability007=1..,Dimension=1,ability007-02=0,ability007-01=..-1}] minecraft:slow_falling 7 0 true
effect give @a[scores={ability007=1..,Dimension=2,ability007-02=0,ability007-01=..-1}] minecraft:levitation 1 60 true
effect give @a[scores={ability007=1..,Dimension=2,ability007-02=..1,ability007-01=..-1}] minecraft:levitation 2 29 true
effect give @a[scores={ability007=1..,Dimension=2,ability007-02=0,ability007-01=..-1}] minecraft:slow_falling 7 0 true

scoreboard players add @a[scores={Dimension=0,ability007-02=0,ability007-01=..-65}] ability007-02 1
scoreboard players add @a[scores={Dimension=0,ability007-02=1,ability007-01=-64..}] ability007-02 1
scoreboard players add @a[scores={Dimension=1,ability007-02=0,ability007-01=..-1}] ability007-02 1
scoreboard players add @a[scores={Dimension=1,ability007-02=1,ability007-01=0..}] ability007-02 1
scoreboard players add @a[scores={Dimension=2,ability007-02=0,ability007-01=..-1}] ability007-02 1
scoreboard players add @a[scores={Dimension=2,ability007-02=1,ability007-01=0..}] ability007-02 1

scoreboard players set @a[scores={OnGround=1}] ability007-02 0