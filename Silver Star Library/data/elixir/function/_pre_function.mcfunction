execute if score $elixir.gamerule.milk_clear_statuses true matches 1 run function elixir:clear_all_statuses
scoreboard players set @a[scores={elixir.drink_milk=1..}] elixir.drink_milk 0

# execute as @a if score @s elixir.active_statuses = $elixir.total_statuses value run advancement grant @s only elixir:all_statuses