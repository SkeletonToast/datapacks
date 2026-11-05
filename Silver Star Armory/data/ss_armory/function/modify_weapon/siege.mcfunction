# {"type":"minecraft:set_components","components":{"minecraft:blocks_attacks":{"damage_reductions":[{"base":1,"factor":0.5,"horizontal_blocking_angle":90}]}}}]

# Zweihanders
    # wooden sword
    execute as @s[scores={WeaponType=1,WeaponMaterial=1}] run \
    function ssa.dev:modify/weapon {item_name:"Wooden Zweihander", \
    attack_damage:4,attack_speed:-2.8,interaction_range:0.3, \
        model:zweihander, \
        lore:"{text:\"Advanced Weapon\",color:gray,italic:false}, \
        {text:\"+0.3 Attack Range\",color:blue,italic:false}, \
        {text:\"+Two-Handed\",color:blue,italic:false}, \
        {text:\"\"}, \
        {text:\"When in Main Hand:\",color:dark_green,italic:false}, \
        {text:\" 5 Attack Damage\",color:dark_green,italic:false}, \
        {text:\" 1.2 Attack Speed\",color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2,properties:{properties:[\"two_handed\"],active:[\"mainhand\"]}", \
        disable_tool:false}
    execute as @s[scores={WeaponType=1,WeaponMaterial=7}] run function ssa.dev:modify/blocks_attacks

    # stone sword
    execute as @s[scores={WeaponType=1,WeaponMaterial=2}] run \
    function ssa.dev:modify/weapon {item_name:"Stone Zweihander", \
    attack_damage:5,attack_speed:-2.8,interaction_range:0.3, \
        model:zweihander, \
        lore:"{text:\"Advanced Weapon\",color:gray,italic:false}, \
        {text:\"+0.3 Attack Range\",color:blue,italic:false}, \
        {text:\"+Two-Handed\",color:blue,italic:false}, \
        {text:\"\"}, \
        {text:\"When in Main Hand:\",color:dark_green,italic:false}, \
        {text:\" 6 Attack Damage\",color:dark_green,italic:false}, \
        {text:\" 1.2 Attack Speed\",color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:3,properties:{properties:[\"two_handed\"],active:[\"mainhand\"]}", \
        disable_tool:false}
    execute as @s[scores={WeaponType=1,WeaponMaterial=7}] run function ssa.dev:modify/blocks_attacks
    
    # copper sword
    execute as @s[scores={WeaponType=1,WeaponMaterial=3}] run \
    function ssa.dev:modify/weapon {item_name:"Copper Zweihander", \
    attack_damage:5,attack_speed:-2.8,interaction_range:0.3, \
        model:zweihander, \
        lore:"{text:\"Advanced Weapon\",color:gray,italic:false}, \
        {text:\"+0.3 Attack Range\",color:blue,italic:false}, \
        {text:\"+Two-Handed\",color:blue,italic:false}, \
        {text:\"\"}, \
        {text:\"When in Main Hand:\",color:dark_green,italic:false}, \
        {text:\" 6 Attack Damage\",color:dark_green,italic:false}, \
        {text:\" 1.2 Attack Speed\",color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2,properties:{properties:[\"two_handed\"],active:[\"mainhand\"]}", \
        disable_tool:false}
    execute as @s[scores={WeaponType=1,WeaponMaterial=7}] run function ssa.dev:modify/blocks_attacks
    
    # iron sword
    execute as @s[scores={WeaponType=1,WeaponMaterial=4}] run \
    function ssa.dev:modify/weapon {item_name:"Iron Zweihander", \
    attack_damage:6,attack_speed:-2.8,interaction_range:0.3, \
        model:zweihander, \
        lore:"{text:\"Advanced Weapon\",color:gray,italic:false}, \
        {text:\"+0.3 Attack Range\",color:blue,italic:false}, \
        {text:\"+Two-Handed\",color:blue,italic:false}, \
        {text:\"\"}, \
        {text:\"When in Main Hand:\",color:dark_green,italic:false}, \
        {text:\" 7 Attack Damage\",color:dark_green,italic:false}, \
        {text:\" 1.2 Attack Speed\",color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2,properties:{properties:[\"two_handed\"],active:[\"mainhand\"]}", \
        disable_tool:false}
    execute as @s[scores={WeaponType=1,WeaponMaterial=7}] run function ssa.dev:modify/blocks_attacks
    
    # golden sword
    execute as @s[scores={WeaponType=1,WeaponMaterial=5}] run \
    function ssa.dev:modify/weapon {item_name:"Golden Zweihander", \
    attack_damage:4,attack_speed:-2.6,interaction_range:0.3, \
        model:zweihander, \
        lore:"{text:\"Advanced Weapon\",color:gray,italic:false}, \
        {text:\"+0.3 Attack Range\",color:blue,italic:false}, \
        {text:\"+Two-Handed\",color:blue,italic:false}, \
        {text:\"\"}, \
        {text:\"When in Main Hand:\",color:dark_green,italic:false}, \
        {text:\" 5 Attack Damage\",color:dark_green,italic:false}, \
        {text:\" 1.4 Attack Speed\",color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2,properties:{properties:[\"two_handed\"],active:[\"mainhand\"]}", \
        disable_tool:false}
    execute as @s[scores={WeaponType=1,WeaponMaterial=7}] run function ssa.dev:modify/blocks_attacks
    
    # diamond sword
    execute as @s[scores={WeaponType=1,WeaponMaterial=6}] run \
    function ssa.dev:modify/weapon {item_name:"Diamond Zweihander", \
    attack_damage:7,attack_speed:-2.8,interaction_range:0.3, \
        model:zweihander, \
        lore:"{text:\"Advanced Weapon\",color:gray,italic:false}, \
        {text:\"+0.3 Attack Range\",color:blue,italic:false}, \
        {text:\"+Two-Handed\",color:blue,italic:false}, \
        {text:\"\"}, \
        {text:\"When in Main Hand:\",color:dark_green,italic:false}, \
        {text:\" 8 Attack Damage\",color:dark_green,italic:false}, \
        {text:\" 1.2 Attack Speed\",color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2,properties:{properties:[\"two_handed\"],active:[\"mainhand\"]}", \
        disable_tool:false}
    execute as @s[scores={WeaponType=1,WeaponMaterial=7}] run function ssa.dev:modify/blocks_attacks
    
    # netherite sword
    execute as @s[scores={WeaponType=1,WeaponMaterial=7}] run \
    function ssa.dev:modify/weapon {item_name:"Purgatite Zweihander", \
    attack_damage:9,attack_speed:-2.8,interaction_range:0.3, \
        model:zweihander, \
        lore:"{text:\"Advanced Weapon\",color:gray,italic:false}, \
        {text:\"+0.3 Attack Range\",color:blue,italic:false}, \
        {text:\"+Two-Handed\",color:blue,italic:false}, \
        {text:\"\"}, \
        {text:\"When in Main Hand:\",color:dark_green,italic:false}, \
        {text:\" 9 Attack Damage\",color:dark_green,italic:false}, \
        {text:\" 1.2 Attack Speed\",color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2,properties:{properties:[\"two_handed\"],active:[\"mainhand\"]}", \
        disable_tool:false}
    execute as @s[scores={WeaponType=1,WeaponMaterial=7}] run function ssa.dev:modify/blocks_attacks

# Hauteclerei