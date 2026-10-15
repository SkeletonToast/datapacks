execute as @a[scores={ssid=528}] run function ss_lib:load_message {namespace:"SSL",datapack:"Elixir"}

scoreboard objectives add elixir.storage.increment dummy
scoreboard objectives add elixir.storage.increment_2 dummy
scoreboard objectives add elixir.storage.stored_amplifier dummy
scoreboard objectives add elixir.storage.stored_duration dummy
scoreboard objectives add elixir.storage.current_amplifier dummy
scoreboard objectives add elixir.storage.current_duration dummy
scoreboard objectives add elixir.generic.amplifier dummy

scoreboard objectives add elixir.drink_milk used:milk_bucket

function gamerule:custom/load {source:elixir,gamerule:milk_clear_statuses,default:true}

function elixir:custom/load_status {source:elixir,status:lightweight}
function elixir:custom/load_status {source:elixir,status:fortification}
function elixir:custom/load_status {source:elixir,status:fragility}
function elixir:custom/load_status {source:elixir,status:beeful}
function elixir:custom/load_status {source:elixir,status:disorientation}
function elixir:custom/load_status {source:elixir,status:feeble}
function elixir:custom/load_status {source:elixir,status:vulnerable}
function elixir:custom/load_status {source:elixir,status:enlargement}
function elixir:custom/load_status {source:elixir,status:reduction}
function elixir:custom/monolevel/load_status {source:elixir,status:occlusion}