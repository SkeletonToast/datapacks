# execute as @a[scores={talisman.active_talismans.1=1..}] run function ss_lib:bitpack/dissect {score:talisman.active_talismans.1,namespace_1:"talisman:talismans/bank_",namespace_2:"/_main"}

# scoreboard players set @a talisman.total_talismans 10
    # TOREPLACE TOTAL_TALISMANS

# execute as @a[scores={talisman.active_talismans.0=1..}] run function talisman:talismans/_main {bank:0}
# execute as @a[scores={talisman.active_talismans.1=1..}] run function talisman:talismans/_main {bank:1}
execute as @r run function run:recur_macro {function:"talisman:talismans/_main",r:10}

# execute as @r run function parse:score_unended {score:talisman.total_talismans,function:"talisman:macro_directory/talismans/_main"}