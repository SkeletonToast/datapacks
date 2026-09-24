function ss_lib:_load
function ssa.armory:_load
function ss_lib:status/_load
function talisman:_load

function sse.dev:_load

function echoes:monsters/_load
# function echoes:classes/_load
function echoes:campfires/_load

function echoes:stats/_load
function echoes:elixir/_load
function echoes:player/_load
# function echoes:artifacts/_load

execute unless score $homesteader.gamerule.character_limit value matches 7.. run scoreboard players set $homesteader.gamerule.character_limit value 7
gamerule players_sleeping_percentage 101
gamerule keep_inventory true

schedule function echoes:scheduled/10t 10t
schedule function echoes:scheduled/20t 20t
schedule function echoes:scheduled/40t 40t
schedule function echoes:scheduled/10s 10s

scoreboard objectives add luck_chance dummy

execute as @a[scores={ssid=528}] run function ss_lib:load_message {namespace:"ֆɨʟʋɛʀ ֆȶǟʀ",datapack:"Echoes Core"}