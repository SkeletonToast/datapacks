scoreboard players add @s raycast_lifetime 1

execute as @s[scores={ItemSelected=0}] if block ~ ~ ~ cobweb run function ss_abilities:ab_028f_item_replace_spider_fang
execute as @s[scores={raycast_lifetime=20..}] unless block ~ ~ ~ cobweb run function ss_abilities:ab_028f_clear_spider_fang
execute if block ~ ~ ~ cobweb run scoreboard players set @s raycast_lifetime 20

execute unless entity @s[scores={raycast_lifetime=20..}] positioned ^ ^ ^0.25 run function ss_abilities:ab_028f_raycast {"max_lifetime":"20"}
execute as @s[scores={raycast_lifetime=20..}] run scoreboard players set @s raycast_lifetime 0