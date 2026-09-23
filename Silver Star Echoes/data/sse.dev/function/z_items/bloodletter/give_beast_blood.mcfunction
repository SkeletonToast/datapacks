item modify entity @s weapon.offhand [{"function":"minecraft:set_count","count":-1,"add":true}]
$give @s potion[potion_contents={custom_color:3949823},custom_name={"italic":false,"text":"Bottled Blood of $(type)"}',custom_data={blood:{type:"beast",beast:"$(type)"}},minecraft:max_stack_size=64,hide_additional_tooltip={}]
tag @s add LetBlood