scoreboard players operation @s generic_a = @s gun_base_damage
    scoreboard players operation @s generic_a *= #const.10 value
execute as @s[scores={raycast_lifetime=..99}] run function math:round {score:generic_a,round:5,reduce:true}
execute as @s[scores={raycast_lifetime=100..149}] run function math:round {score:generic_a,round:7,reduce:true}
execute as @s[scores={raycast_lifetime=150..}] run function math:round {score:generic_a,round:10,reduce:true}
scoreboard players set @s[scores={generic_a=..0}] generic_a 1
function parse:score {function:"ss_armory:properties/guns/bolt_action/damage",score:generic_a,prepend:"",append:".",prepend_position:0,append_position:1}
tag @n add StatusEligible
# scoreboard players add @n encumbered_timer 20

# execute at @s anchored eyes run playsound entity.arrow.hit_player player @s ^ ^ ^ 0.3 0.9

# execute as @e[type=!#ss_lib:not_alive,dx=0.1,dy=0.1,dz=0.1] run damage @s 7 minecraft:arrow
# execute as @e[type=!#ss_lib:not_alive,dx=-0.1,dy=-0.1,dz=-0.1] run damage @s 7 minecraft:arrow by @p[distance=0]