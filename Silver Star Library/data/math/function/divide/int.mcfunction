$scoreboard players operation @s generic_a = @s $(score)
$scoreboard players set @s generic_b $(div)
scoreboard players operation @s generic_a %= @s generic_b
scoreboard players operation @s generic_c = @s generic_b
    scoreboard players add @s generic_c 1
        # this is here so that it effectively divs correctly instead of just flooring
    scoreboard players operation @s generic_c /= #const.2 value

# div up
execute if score @s generic_a >= @s generic_c run scoreboard players operation @s generic_b -= @s generic_a
$execute if score @s generic_a >= @s generic_c run scoreboard players operation @s $(score) += @s generic_b

# div down
$execute if score @s generic_a < @s generic_c run scoreboard players operation @s $(score) -= @s generic_a

# reduction
$scoreboard players set @s generic_b $(div)
$scoreboard players operation @s $(score) /= @s generic_b