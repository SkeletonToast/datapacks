scoreboard players set @a luck_chance -1

function ss_lib:_pre_function
function ss_statuses:_pre_function
function echoes:player/_pre_function
function echoes:stats/_pre_function

# function echoes:classes/_pre_function
# function echoes:classes/_tick

function echoes:ambient/_tick

function echoes:player/_tick
function ss_armory:_tick
function ss_statuses:_tick
function echoes:stats/_tick
# i moved feat assignment to player, since it's mostly related to things that happen in echoes mechanics,
    # so if there's an issue, check there

function talisman:_tick

# campfires
function echoes:campfires/_tick

function ss_lib:fetch/health {"s":"@a"}

# death coords
function ss_lib:deathcoords

# execute as @a if items entity @s weapon.* *[custom_data~{artifact:{}}] run tag @s add HoldingArtifact
# execute as @a[tag=HoldingArtifact] run function echoes:artifacts/_tick
# tag @a remove HoldingArtifact

function echoes:monsters/_tick

function ec_dev:_tick

function echoes:player/_post_function
function ss_lib:_post_function
function ss_statuses:_post_function
function ec_dev:_post_function