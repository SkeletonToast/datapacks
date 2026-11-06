scoreboard players set @a[scores={Dimension=0}] wayfinderd 0
scoreboard players set @a[scores={Dimension=1}] wayfinderd 1
scoreboard players set @a[scores={Dimension=2}] wayfinderd 2
scoreboard players add SkeletonToast wayfindertimer 1
scoreboard players set @a[scores={wayfindertimer=21..}] wayfindertimer 0
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}},scores={wayfindertimer=1},predicate=ss_library:is_sneaking,nbt={Inventory:[{Slot:-106b,id:"minecraft:fermented_spider_eye"}]}] as @a run tellraw SkeletonToast [{"selector":"@s","color":"gold"},": ",{"score":{"name":"@s","objective":"xcoord"},"color":"dark_green"},", ",{"score":{"name":"@s","objective":"ycoord"},"color":"dark_aqua"},", ",{"score":{"name":"@s","objective":"zcoord"},"color":"blue"},", ",{"score":{"name":"@s","objective":"wayfinderd"},"color":"yellow"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}},scores={wayfindertimer=1},predicate=ss_library:is_sneaking,nbt={Inventory:[{Slot:-106b,id:"minecraft:fermented_spider_eye"}]}] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.1 1