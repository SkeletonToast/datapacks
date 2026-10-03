# dependency failures
execute unless data storage silver_star_library installed run return fail

# day tracker
execute if score $day_time value matches 0 run scoreboard players add $day value 1
execute if score $day_time value matches 23000 as @a[scores={homesteader.day_title_eligible=1,Dimension=1}] run function homesteader:days/dawn
execute if score $day_time value matches 13000 as @a[scores={homesteader.day_title_eligible=1,Dimension=1}] run function homesteader:days/dusk
execute if score $day_time value matches 6000 run function homesteader:days/align_days
scoreboard players set @a homesteader.day_title_eligible 1

execute if score $day_time value matches 6000 if entity @a[scores={Dimension=1}] run function homesteader:days/advance_time_false
execute if score $day_time value matches 13000 if entity @a[scores={Dimension=1}] run function homesteader:days/advance_time_false
execute if score $day_time value matches 18000 if entity @a[scores={Dimension=1}] run function homesteader:days/advance_time_false
execute if score $day_time value matches 23000 if entity @a[scores={Dimension=1}] run function homesteader:days/advance_time_false

execute unless score $day value matches 1.. run scoreboard players set $day value 1