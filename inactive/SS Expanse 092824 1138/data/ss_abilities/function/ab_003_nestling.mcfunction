# "NESTLING"

# execute as @a[scores={ability003=1..,ItemSelected=0}] at @s if block ~ ~ ~ #minecraft:leaves run effect give @s minecraft:invisibility 1 0 true
# execute as @a[scores={ability003=1..,ItemSelected=0}] at @s if block ~ ~1 ~ #ss_library:vegetation run effect give @s minecraft:invisibility 1 0 true
# execute as @a[scores={ability003=1..,ItemSelected=0}] at @s if block ~ ~1 ~ #ss_library:vegetation run effect give @s minecraft:weakness 1 4 true

execute as @a[scores={ability003=1..,ItemSelected=0}] at @s if block ~ ~ ~ #minecraft:leaves run scoreboard players add @s ability003-02 1
execute as @a[scores={ability003=1..,ItemSelected=0}] at @s if block ~ ~1 ~ #ss_library:vegetation run scoreboard players add @s ability003-02 1
scoreboard players add @a[scores={ability003=1..,ItemSelected=0},predicate=ss_library:is_sneaking] ability003-02 1

effect give @a[scores={ability003-02=20..}] minecraft:invisibility 1 0 true
effect give @a[scores={ability003-02=20..}] minecraft:weakness 1 4 true

execute as @a[scores={ability003=1..,ItemSelected=0}] at @s if block ~ ~1 ~ #ss_library:underwater_vegetation run effect give @s minecraft:water_breathing 1 0 true
execute as @a[scores={ability003=1..,ability003-01=10,OnGround=1,ItemSelected=0}] at @s align y if block ~ ~-0.1 ~ #minecraft:leaves run tp @s ~ ~-0.1 ~
execute as @a[scores={ability003=1..,ability003-01=10..,OnGround=1,ItemSelected=0}] at @s align y if block ~ ~-0.1 ~ #minecraft:leaves run scoreboard players set @s ability003-01 0
execute as @a[scores={ability003=1..,ItemSelected=0},predicate=ss_library:is_sprinting] at @s positioned ~ ~0.01 ~ rotated ~90 ~ if block ^0.4 ^ ^ #minecraft:leaves positioned ~ ~-1 ~ unless block ^0.4 ^ ^ #ss_library:nonsolidblocks positioned ~ ~2 ~ if block ^0.4 ^ ^ #ss_library:nonsolidblocks positioned ~ ~-1 ~ run tp @s ^0.1 ^ ^
execute as @a[scores={ability003=1..,ItemSelected=0},predicate=ss_library:is_sprinting] at @s positioned ~ ~0.01 ~ rotated ~90 ~ if block ^0.4 ^ ^ #minecraft:leaves positioned ~ ~-1 ~ unless block ^0.4 ^ ^ #ss_library:nonsolidblocks positioned ~ ~2 ~ if block ^0.4 ^ ^ #minecraft:leaves positioned ~ ~-1 ~ run tp @s ^0.1 ^ ^

execute as @a[scores={ability003=1..,ItemSelected=0},predicate=ss_library:is_sprinting] at @s positioned ~ ~1.01 ~ rotated ~90 ~ if block ^0.4 ^ ^ #minecraft:leaves positioned ~ ~-2 ~ unless block ^0.4 ^ ^ #ss_library:nonsolidblocks positioned ~ ~1 ~ if block ^0.4 ^ ^ #ss_library:nonsolidblocks positioned ~ ~ ~ run tp @s ^0.1 ^ ^
execute as @a[scores={ability003=1..,ItemSelected=0},predicate=ss_library:is_sprinting] at @s positioned ~ ~1.01 ~ rotated ~90 ~ if block ^0.4 ^ ^ #minecraft:leaves positioned ~ ~-2 ~ unless block ^0.4 ^ ^ #ss_library:nonsolidblocks positioned ~ ~1 ~ if block ^0.4 ^ ^ #minecraft:leaves positioned ~ ~ ~ run tp @s ^0.1 ^ ^

execute as @a[scores={ability003=1..,ability003-03=1..,ItemSelected=0}] at @s unless block ~ ~ ~ #ss_library:nonsolidblocks if block ~ ~1 ~ #minecraft:leaves if block ~ ~2 ~ #minecraft:leaves run tp @s ~ ~0.9 ~

execute as @a[scores={ability003=1..}] at @s unless block ~ ~1 ~ #ss_library:vegetation unless block ~ ~ ~ #minecraft:leaves run scoreboard players set @s ability003-02 0
scoreboard players set @a[scores={ability003=1..,ItemSelected=0}] ability003-02 0

scoreboard players set @a[scores={ability003-03=1..}] ability003-03 0
execute as @a[scores={ability003=1..}] unless entity @s[predicate=ss_library:is_sneaking] run scoreboard players set @s ability003-01 0