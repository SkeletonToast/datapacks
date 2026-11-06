schedule function ss_species:s_007f_cobwebdetection 10t

execute unless entity @a[scores={species=007}] run return fail

tag @a[scores={species=007}] remove species007-01

execute as @a[scores={species=007},tag=!species007-01] at @s if block ~0.3 ~0.9 ~ minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s if block ~-0.3 ~0.9 ~ minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s if block ~ ~0.9 ~0.3 minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s if block ~ ~0.9 ~-0.3 minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s if block ~0.21 ~0.9 ~0.21 minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s if block ~-0.21 ~0.9 ~0.21 minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s if block ~-0.21 ~0.9 ~-0.21 minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s if block ~0.21 ~0.9 ~-0.21 minecraft:cobweb run tag @s add species007-01

execute as @a[scores={species=007},tag=!species007-01] at @s if block ~0.3 ~ ~ minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s if block ~-0.3 ~ ~ minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s if block ~ ~ ~0.3 minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s if block ~ ~ ~-0.3 minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s if block ~0.21 ~ ~0.21 minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s if block ~-0.21 ~ ~0.21 minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s if block ~-0.21 ~ ~-0.21 minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s if block ~0.21 ~ ~-0.21 minecraft:cobweb run tag @s add species007-01

execute as @a[scores={species=007},tag=!species007-01] at @s anchored eyes positioned ^ ^ ^ if block ~0.3 ~ ~ minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s anchored eyes positioned ^ ^ ^ if block ~-0.3 ~ ~ minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s anchored eyes positioned ^ ^ ^ if block ~ ~ ~0.3 minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s anchored eyes positioned ^ ^ ^ if block ~ ~ ~-0.3 minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s anchored eyes positioned ^ ^ ^ if block ~0.21 ~ ~0.21 minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s anchored eyes positioned ^ ^ ^ if block ~-0.21 ~ ~0.21 minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s anchored eyes positioned ^ ^ ^ if block ~-0.21 ~ ~-0.21 minecraft:cobweb run tag @s add species007-01
execute as @a[scores={species=007},tag=!species007-01] at @s anchored eyes positioned ^ ^ ^ if block ~0.21 ~ ~-0.21 minecraft:cobweb run tag @s add species007-01