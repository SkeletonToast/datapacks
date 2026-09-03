function ss_lib:_load
function ss_armory:_load
function ss_statuses:_load
function talisman:_load

function ec_dev:_load

function echoes:monsters/_load
# function echoes:classes/_load
function echoes:campfires/_load

function echoes:stats/_load
function echoes:player/_load
# function echoes:artifacts/_load

gamerule players_sleeping_percentage 101
gamerule keep_inventory true

schedule function echoes:core/scheduled/10t 10t
schedule function echoes:core/scheduled/20t 20t
schedule function echoes:core/scheduled/40t 40t
schedule function echoes:core/scheduled/10s 10s

scoreboard objectives add luck_chance dummy

execute as SkeletonToast run function ss_lib:load_message {namespace:"SILVER STAR",datapack:"Echoes Core"}