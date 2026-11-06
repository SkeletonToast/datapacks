function ss_core:_pre_function

# this is here so that parrying will negate DamageDealt and DamageTaken before it's referenced by anything else
execute as @a[tag=UnlockedParrying] run function ss_core:parrying

# this is just all the other tick files
function crowskeep:_tick
function ss_core:_tick_additional

function ss_core:_post_function