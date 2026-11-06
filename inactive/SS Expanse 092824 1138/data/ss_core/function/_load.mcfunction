function ss_library:_load

scoreboard objectives add ParryCharges dummy
scoreboard objectives add ParryChargeMax dummy
scoreboard objectives add ParryPenalty dummy
scoreboard objectives add ParryDamageTaken dummy
scoreboard objectives add ParryHealing dummy
scoreboard objectives add ParryWindow dummy
scoreboard objectives add ParryWindowMax dummy
scoreboard objectives add ParryMultiplier dummy

function ss_species:_load
function ss_classes:_load
function ss_traits:_load
function ss_abilities:_load
function ss_stagger:_load
function ss_statuses:_load

function ss_core:whitelist {"name":"KidInTheCorner"}

execute as @a run function ss_library:schedule_title_times