execute if score $day_time value matches 0 run scoreboard players add $day value 1

# days
scoreboard players add $homesteader.calendar.total_days value 1
scoreboard players operation $homesteader.calendar.day value = $homesteader.calendar.total_days value
execute if score $homesteader.calendar.day value > $homesteader.calendar.month_length value run function homesteader:days/calculations/calendar_month
execute if score $homesteader.calendar.month value > $homesteader.calendar.year_length value run function homesteader:days/calculations/calendar_year