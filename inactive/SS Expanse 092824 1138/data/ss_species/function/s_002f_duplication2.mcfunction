$xp add @s $(xpdrain) points
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.1 1
$item replace entity @s weapon.mainhand with $(replaceitem)