# these are necessary to run the functions that instantiate the rest of the constants
scoreboard players set #const.-1 value -1
scoreboard players set #const.10 value 10

execute unless entity @a run schedule function ss_lib:load_constants 10s
execute unless entity @a run return fail

execute as @r run function run:recur_macro {function:"ss_lib:set_constants",r:100}
execute as @r run function run:recur_macro {function:"ss_lib:set_constants_negative",r:100}