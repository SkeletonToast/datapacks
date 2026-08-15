execute store result score @s talisman.id_verify run data get entity @s SelectedItem.components.minecraft:custom_data.talisman.id[0]
scoreboard players set @s generic_a 31
scoreboard players operation @s generic_t = @s talisman.id_verify
scoreboard players operation @s generic_t /= @s generic_a
scoreboard players operation @s talisman.id_verify %= @s generic_a

scoreboard players set @s talisman.generic.id 2
function math:power/score {base_score:talisman.generic.id,exponent_score:talisman.id_verify}

function parse:score_unended {score:generic_t,function:"talisman:talismans/equip_score"}
# send generic_t and talisman.generic.id to equip_score. add the talisman_generic_id score to talisman.active_talismans.$(generic_t) AFTER verifying