execute as @a[scores={ssid=528}] run function ss_lib:load_message {namespace:"SSL",datapack:"Elixir"}

scoreboard objectives add elixir.storage.increment dummy
scoreboard objectives add elixir.storage.increment_2 dummy
scoreboard objectives add elixir.storage.stored_amplifier dummy
scoreboard objectives add elixir.storage.stored_duration dummy
scoreboard objectives add elixir.storage.current_amplifier dummy
scoreboard objectives add elixir.storage.current_duration dummy

function elixir:custom/load_status {source:elixir,status:lightweight}
function elixir:custom/load_status {source:elixir,status:fortification}
function elixir:custom/load_status {source:elixir,status:fragility}
function elixir:custom/load_status {source:elixir,status:beeful}
function elixir:custom/load_status {source:elixir,status:disorientation}
function elixir:custom/load_status {source:elixir,status:feebleness}
    # scoreboard objectives add elixir.feebleness.attribute_multiplier dummy
function elixir:custom/monolevel/load_status {source:elixir,status:occlusion}