kill @s
$kill @e[type=item,distance=..0.5,nbt={Item:{count:$(count),id:"minecraft:smooth_stone"}}]
$kill @e[type=item,distance=..0.5,nbt={Item:{count:$(count),id:"minecraft:lapis_lazuli"}}]
particle flash ~ ~ ~
playsound entity.wither.spawn player @a[distance=..5] ~ ~ ~ 0.3 2
$function ss_species:s_002f_summonanchor {"count":"$(count)"}