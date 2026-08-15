$execute as @a[scores={talisman.active_talismans.$(value)=1..}] run function ss_lib:binary_disambiguation {score:talisman.active_talismans.$(value),namespace_1:"talisman:talismans/bank_$(value)/id_",namespace_2:""}

# $execute as @a[scores={talisman.$(value).equipped=1}] run function talisman:talismans/id/$(value)