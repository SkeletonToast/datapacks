clear @a[scores={trait002=1..,SoftRestOrRespawn=2}] elytra[custom_data~{wing_trait:true}]

execute as @a[scores={trait002=5..7,SoftRestOrRespawn=2},tag=!GivenWings] unless items entity @s armor.chest * run function ss_lib:traits/t_002f_special_wings {"format":"item replace entity @s armor.chest with"}
execute as @a[scores={trait002=5..7,SoftRestOrRespawn=2},tag=!GivenWings] run function ss_lib:traits/t_002f_special_wings {"format":"give @s"}

execute as @a[scores={trait002=4,SoftRestOrRespawn=2},tag=!GivenWings] unless items entity @s armor.chest * run function ss_lib:traits/t_002f_strong_wings {"format":"item replace entity @s armor.chest with"}
execute as @a[scores={trait002=4,SoftRestOrRespawn=2},tag=!GivenWings] run function ss_lib:traits/t_002f_strong_wings {"format":"give @s"}

execute as @a[scores={trait002=1..3,SoftRestOrRespawn=2},tag=!GivenWings] unless items entity @s armor.chest * run function ss_lib:traits/t_002f_wings {"format":"item replace entity @s armor.chest with"}
execute as @a[scores={trait002=1..3,SoftRestOrRespawn=2},tag=!GivenWings] run function ss_lib:traits/t_002f_wings {"format":"give @s"}

tag @a[tag=GivenWings] remove GivenWings

execute as @a[scores={trait002=1..,trait002-01=1..,FallFlying=1,Food=6..}] run attribute @s gravity modifier add trait002_gravity -1 add_multiplied_total
effect give @a[scores={trait002=1..,trait002-01=1..,FallFlying=1}] minecraft:hunger 1 19 true