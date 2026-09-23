scoreboard players add @s disoriented_random 1
execute as @s[scores={disoriented_random=1}] at @s run tp @s ~ ~ ~ ~5 ~
execute as @s[scores={disoriented_random=1}] if predicate ss_lib:status/random_05 at @s run tp @s ~ ~ ~ ~ ~3
execute as @s[scores={disoriented_random=1}] if predicate ss_lib:status/random_005 if predicate ss_lib:status/random_05 at @s run tp @s ~ ~ ~ ~30 ~
execute as @s[scores={disoriented_random=1}] unless predicate ss_lib:status/random_0975 at @s run tp @s ~ ~ ~ ~ ~30
execute as @s[scores={disoriented_random=2}] at @s run tp @s ~ ~ ~ ~-5 ~
execute as @s[scores={disoriented_random=2}] if predicate ss_lib:status/random_05 at @s run tp @s ~ ~ ~ ~ ~-3
execute as @s[scores={disoriented_random=2}] if predicate ss_lib:status/random_005 if predicate ss_lib:status/random_05 at @s run tp @s ~ ~ ~ ~-30 ~
execute as @s[scores={disoriented_random=2}] unless predicate ss_lib:status/random_0975 at @s run tp @s ~ ~ ~ ~ ~-30
scoreboard players set @s[scores={disoriented_random=2..}] disoriented_random 0

scoreboard players set @s disoriented_active 1