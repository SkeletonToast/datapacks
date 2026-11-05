$tag @a remove $(stat)_feat_1
$tag @a remove $(stat)_feat_2
$tag @a remove $(stat)_feat_3
$tag @a remove $(stat)_feat_4
$tag @a remove $(stat)_feat_5
$execute as @a[scores={$(stat)=15..}] unless score @s sse.difficulty.attribute_limit matches 0..14 run tag @s add $(stat)_feat_1
$execute as @a[scores={$(stat)=30..}] unless score @s sse.difficulty.attribute_limit matches 0..29 run tag @s add $(stat)_feat_2
$execute as @a[scores={$(stat)=50..}] unless score @s sse.difficulty.attribute_limit matches 0..49 run tag @s add $(stat)_feat_3
$execute as @a[scores={$(stat)=70..}] unless score @s sse.difficulty.attribute_limit matches 0..69 run tag @s add $(stat)_feat_4
$execute as @a[scores={$(stat)=90..}] unless score @s sse.difficulty.attribute_limit matches 0..89 run tag @s add $(stat)_feat_5