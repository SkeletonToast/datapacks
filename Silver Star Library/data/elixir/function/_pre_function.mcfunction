tag @a[tag=elixir.clear_statuses] remove elixir.clear_statuses
execute if score $elixir.gamerule.milk_clear_statuses true matches 1 run tag @a[scores={elixir.drink_milk=1..}] add elixir.clear_statuses
scoreboard players set @a[scores={elixir.drink_milk=1..}] elixir.drink_milk 0