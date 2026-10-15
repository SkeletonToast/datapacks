function homesteader:dependencies

function familiars:_load

function homesteader:gamerule/_load
function homesteader:characters/_load

scoreboard objectives add homesteader.day_title_eligible dummy

# statistics
scoreboard objectives add homesteader.player_kills playerKillCount
scoreboard objectives add homesteader.player_deaths killed_by:player
scoreboard objectives add homesteader.fish_caught custom:fish_caught
scoreboard objectives add homesteader.raids_triggered custom:raid_trigger
scoreboard objectives add homesteader.raids_won custom:raid_win

    # mounted distance
    scoreboard objectives add homesteader.distance_by_happy_ghast custom:happy_ghast_one_cm
    scoreboard objectives add homesteader.distance_by_horse custom:horse_one_cm
    scoreboard objectives add homesteader.distance_by_nautilus custom:nautilus_one_cm
    scoreboard objectives add homesteader.distance_mounted dummy

scoreboard players set $homesteader.calendar.month_length value 56
scoreboard players set $homesteader.calendar.year_length value 7