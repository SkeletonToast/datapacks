execute as @s[scores={TimeSinceDeath=1,chr-002=2}] run tellraw @a ["",{"selector":"@s"}," bonked their head"]
execute as @s[scores={OnGround=1}] at @s if block ~ ~2 ~ air run scoreboard players set @s chr-002 1
execute as @s[scores={OnGround=1,chr-002=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] unless block ~ ~2 ~ #ss_library:nonsolidblocks unless block ~ ~2 ~ #minecraft:leaves run damage @s 0.1 generic
execute as @s[scores={OnGround=1,chr-002=1}] at @s unless block ~ ~2 ~ #ss_library:nonsolidblocks unless block ~ ~2 ~ #minecraft:leaves run scoreboard players set @s chr-002 2