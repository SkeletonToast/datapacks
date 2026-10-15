function gamerule:custom/tick_bool {source:elixir,gamerule:milk_clear_statuses}

function elixir:custom/tick_status {status:lightweight,status_function:"elixir:status/lightweight/main",expire_function:"elixir:status/lightweight/expire",source:elixir}
function elixir:custom/tick_status {status:fortification,status_function:"elixir:status/fortification/main",expire_function:"elixir:status/fortification/expire",source:elixir}
function elixir:custom/tick_status {status:fragility,status_function:"elixir:status/fragility/main",expire_function:"elixir:status/fragility/expire",source:elixir}
function elixir:custom/tick_status {status:beeful,status_function:"elixir:status/beeful/main",expire_function:"elixir:status/null_expire",source:elixir}
function elixir:custom/tick_status {status:disorientation,status_function:"elixir:status/disorientation/main",expire_function:"elixir:status/disorientation/expire",source:elixir}
function elixir:custom/tick_status {status:feeble,status_function:"elixir:status/feeble/main",expire_function:"elixir:status/feeble/expire",source:elixir}
function elixir:custom/tick_status {status:vulnerable,status_function:"elixir:status/vulnerable/main",expire_function:"elixir:status/vulnerable/expire",source:elixir}
function elixir:custom/tick_status {status:enlargement,status_function:"elixir:status/enlargement/main",expire_function:"elixir:status/enlargement/expire",source:elixir}
function elixir:custom/tick_status {status:reduction,status_function:"elixir:status/reduction/main",expire_function:"elixir:status/reduction/expire",source:elixir}
function elixir:custom/monolevel/tick_status {status:occlusion,status_function:"elixir:status/occlusion",expire_function:"elixir:status/null_expire",source:elixir}