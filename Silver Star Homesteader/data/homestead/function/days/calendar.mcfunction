scoreboard players add $day value 1

# days
scoreboard players add $homestead.calendar.total_days value 1
scoreboard players operation $homestead.calendar.day value = $homestead.calendar.total_days value
execute if score $homestead.calendar.day value > $homestead.calendar.month_length value run function homestead:days/calculations/calendar_month
execute if score $homestead.calendar.month value > $homestead.calendar.year_length value run function homestead:days/calculations/calendar_year