function homestead:dependencies

function familiars:_load

function homestead:gamerule/_load
function homestead:characters/_load

scoreboard objectives add homestead.day_title_eligible dummy

# statistics
scoreboard objectives add homestead.player_kills playerKillCount
scoreboard objectives add homestead.player_deaths killed_by:player
scoreboard objectives add homestead.fish_caught custom:fish_caught
scoreboard objectives add homestead.raids_triggered custom:raid_trigger
scoreboard objectives add homestead.raids_won custom:raid_win

    # mounted distance
    scoreboard objectives add homestead.distance_by_happy_ghast custom:happy_ghast_one_cm
    scoreboard objectives add homestead.distance_by_horse custom:horse_one_cm
    scoreboard objectives add homestead.distance_by_nautilus custom:nautilus_one_cm
    scoreboard objectives add homestead.distance_mounted dummy

scoreboard players set $homestead.calendar.month_length value 56
scoreboard players set $homestead.calendar.year_length value 7