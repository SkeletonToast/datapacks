function of_items:artifacts/_main

scoreboard players set @a of_display_temp 0

execute as @a if items entity @s armor.head *[custom_data~{goggles:1b}] run effect give @s darkness 1 0 true
execute as @a if items entity @s weapon.* *[custom_data~{thermometer:1b}] run scoreboard players set @s of_display_temp 1

scoreboard players set @a[advancements={of_items:artifacts/using_clock=false}] used_clock 0
advancement revoke @a[advancements={of_items:artifacts/using_clock=true}] only of_items:artifacts/using_clock