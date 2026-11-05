execute as @a[scores={ssid=528}] run function ss_lib:load_message {namespace:"SSL",datapack:"Elixir"}

scoreboard objectives add elixir.storage.increment dummy
scoreboard objectives add elixir.storage.increment_2 dummy
scoreboard objectives add elixir.storage.stored_amplifier dummy
scoreboard objectives add elixir.storage.stored_duration dummy
scoreboard objectives add elixir.storage.current_amplifier dummy
scoreboard objectives add elixir.storage.current_duration dummy
scoreboard objectives add elixir.generic.amplifier dummy
scoreboard objectives add elixir.clear_statuses dummy
scoreboard objectives add elixir.total_statuses dummy
scoreboard objectives remove elixir.total_statuses
scoreboard objectives add elixir.active_statuses dummy

scoreboard objectives add elixir.drink_milk used:milk_bucket

function gamerule:custom/load {source:elixir,gamerule:milk_clear_statuses,default:true}

# default polylevel
function elixir:custom/load_status {source:elixir,status:fortification}
function elixir:custom/load_status {source:elixir,status:fragility}
function elixir:custom/load_status {source:elixir,status:beeful}
function elixir:custom/load_status {source:elixir,status:feeble}
function elixir:custom/load_status {source:elixir,status:vulnerability}

# capped amplifier
    # some of these still have caps for generic.amplifier in the files themselves; that's fine, that's basically nonexistent performance impact.
    # eventually get rid of them if you decide to go with the max amplifier system though, because then apply will just handle all that
function elixir:custom/load_status_max_amplifier {source:elixir,status:lightweight,max_amplifier:9}
# function elixir:custom/load_status_max_amplifier {source:elixir,status:disorientation,max_amplifier:9}
    # something bizarre and evil is going on with disorientation. do NOT enable it. it somehow caused a complete memory leak when i tried to apply it
function elixir:custom/load_status_max_amplifier {source:elixir,status:reduction,max_amplifier:9}
function elixir:custom/load_status_max_amplifier {source:elixir,status:enlargement,max_amplifier:9}

# monolevel
function elixir:custom/monolevel/load_status {source:elixir,status:occlusion}
function elixir:custom/monolevel/load_status {source:elixir,status:immunity}