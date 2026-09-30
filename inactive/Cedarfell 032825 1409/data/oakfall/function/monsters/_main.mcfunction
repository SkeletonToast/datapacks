execute at @a[scores={of_fear=5000..}] as @e[distance=..50,tag=!VariantMonster,type=#ss_lib:hostile,scores={Age=1},limit=5] \
    if predicate ss_lib:random_10_percent run function oakfall:monsters/whelp
execute at @a[scores={of_fear=5000..}] as @e[distance=..50,tag=!VariantMonster,type=#ss_lib:hostile,scores={Age=1},limit=5] \
    if predicate ss_lib:random_10_percent run function oakfall:monsters/brute
execute at @a[scores={of_fear=10000..}] as @e[distance=..50,tag=!VariantMonster,type=#ss_lib:hostile,scores={Age=1},limit=5] \
    if predicate ss_lib:random_10_percent if predicate ss_lib:random_50_percent run function oakfall:monsters/commander

# fog creatures
# execute at @a[limit=10,sort=random,scores={of_fear=5000..},tag=!FearIneligible] unless entity @a[distance=0.5..10] if predicate ss_lib:random_1_percent if predicate ss_lib:random_10_percent if predicate ss_lib:random_50_percent as @e[distance=..100,type=#ss_lib:hostile,scores={Age=1}] run function oakfall:monsters/fogtouch
# execute at @a[limit=10,sort=random,scores={of_fear=10000..},tag=!FearIneligible] unless entity @a[distance=0.5..5] if predicate ss_lib:random_1_percent if predicate ss_lib:random_10_percent if predicate ss_lib:random_50_percent as @e[distance=..100,type=#ss_lib:hostile,scores={Age=1}] run function oakfall:monsters/fogtouch
execute at @a[limit=10,sort=random,scores={of_fear=20000..},tag=!FearIneligible] unless entity @a[distance=0.5..5] if predicate ss_lib:random_1_percent if predicate ss_lib:random_10_percent if predicate ss_lib:random_50_percent as @e[distance=..100,type=#ss_lib:hostile,scores={Age=1}] run function oakfall:monsters/fogtouch
# execute at @a[limit=10,sort=random,scores={of_fear=70000..},tag=!FearIneligible] if predicate ss_lib:random_1_percent if predicate ss_lib:random_50_percent as @e[distance=..100,type=#ss_lib:hostile,scores={Age=1}] run function oakfall:monsters/fogtouch
# execute at @a[limit=10,sort=random,scores={of_fear=80000..},tag=!FearIneligible] if predicate ss_lib:random_1_percent if predicate ss_lib:random_50_percent as @e[distance=..100,type=#ss_lib:hostile,scores={Age=1}] run function oakfall:monsters/fogtouch
execute at @a as @e[distance=..100,type=#ss_lib:hostile,tag=Fogtouched] run function oakfall:monsters/fogtouched
execute at @a unless entity @e[tag=Fogtouched,distance=..20] if predicate ss_lib:random_10_percent positioned ~ ~2 ~ facing entity @e[tag=Fogtouched,distance=20..50] eyes run playsound minecraft:particle.soul_escape hostile @a ^ ^ ^5 1 0.5
execute at @a unless entity @e[tag=Fogtouched,distance=..20] if predicate ss_lib:random_10_percent positioned ~ ~2 ~ facing entity @e[tag=Fogtouched,distance=51..100] eyes run playsound minecraft:particle.soul_escape hostile @a ^ ^ ^10 1 0.5

# pillagers
execute as @e[type=pillager] if predicate ss_lib:random_1_percent if items entity @s weapon.mainhand crossbow run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:charged_projectiles":[{count:1,id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:true,colors:[I;16351261,0],fade_colors:[I;16351261]}]}}}]}}]