$scoreboard players set @s generic_i $(value)
execute if score @s generic_i = @s ss_lib.bitpack.verify run scoreboard players set @s ss_lib.bitpack.verify -1