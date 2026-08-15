scoreboard objectives add talisman.generic.id dummy
scoreboard objectives add talisman.active_talismans dummy
scoreboard objectives add talisman.total_talismans dummy
scoreboard objectives add talisman.slots dummy
scoreboard objectives add talisman.scaling dummy
scoreboard objectives add talisman.generic.scaling dummy
scoreboard objectives add talisman.id_verify dummy

function run:recur_macro {function:"talisman:_create_talisman_scores",r:10}