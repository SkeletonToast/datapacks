# dependency failures
execute unless data storage silver_star_library installed run return fail

# gamerules
function homestead:gamerule/_tick

# day tracker
execute unless score $day value matches 1.. run scoreboard players set $day value 1
execute unless score $homestead.calendar.day value matches 1.. run scoreboard players set $homestead.calendar.day value 1
execute unless score $homestead.calendar.month value matches 1.. run scoreboard players set $homestead.calendar.month value 1
execute unless score $homestead.calendar.year value matches 1.. run scoreboard players set $homestead.calendar.year value 1

execute if score $day_time value matches 23000 as @a[scores={homestead.day_title_eligible=1,Dimension=1}] run function homestead:days/dawn
    # calendar function is now run at dawn, so it's easy to synchronize everything
execute if score $day_time value matches 13000 as @a[scores={homestead.day_title_eligible=1,Dimension=1}] run function homestead:days/dusk
execute if score $day_time value matches 6000 run function homestead:days/calculations/align_moon_phase
scoreboard players set @a homestead.day_title_eligible 1

execute if score $day_time value matches 6000 if entity @a[scores={Dimension=1}] run function homestead:days/advance_time_false
execute if score $day_time value matches 13000 if entity @a[scores={Dimension=1}] run function homestead:days/advance_time_false
execute if score $day_time value matches 18000 if entity @a[scores={Dimension=1}] run function homestead:days/advance_time_false
execute if score $day_time value matches 23000 if entity @a[scores={Dimension=1}] run function homestead:days/advance_time_false

execute as @a run function homestead:statistics