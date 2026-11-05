# Longswords
    # wooden sword
    execute as @s[scores={WeaponType=1,WeaponMaterial=1}] run \
    function ssa.dev:modify/weapon {item_name:"Wooden Longsword", \
    attack_damage:4,attack_speed:-2.7,interaction_range:0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'+Two-Handed',color:blue,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 5 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.3 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2,properties:{properties:['two_handed'],active:['mainhand']}", \
        disable_tool:false}

    # stone sword
    execute as @s[scores={WeaponType=1,WeaponMaterial=2}] run \
    function ssa.dev:modify/weapon {item_name:"Stone Longsword", \
    attack_damage:5,attack_speed:-2.7,interaction_range:0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'+Two-Handed',color:blue,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 6 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.3 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:3,properties:{properties:['two_handed'],active:['mainhand']}", \
        disable_tool:false}
    
    # copper sword
    execute as @s[scores={WeaponType=1,WeaponMaterial=3}] run \
    function ssa.dev:modify/weapon {item_name:"Copper Longsword", \
    attack_damage:5,attack_speed:-2.7,interaction_range:0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'+Two-Handed',color:blue,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 6 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.3 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2,properties:{properties:['two_handed'],active:['mainhand']}", \
        disable_tool:false}
    
    # iron sword
    execute as @s[scores={WeaponType=1,WeaponMaterial=4}] run \
    function ssa.dev:modify/weapon {item_name:"Iron Longsword", \
    attack_damage:6,attack_speed:-2.7,interaction_range:0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'+Two-Handed',color:blue,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 7 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.3 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2,properties:{properties:['two_handed'],active:['mainhand']}", \
        disable_tool:false}
    
    # golden sword
    execute as @s[scores={WeaponType=1,WeaponMaterial=5}] run \
    function ssa.dev:modify/weapon {item_name:"Golden Longsword", \
    attack_damage:4,attack_speed:-2.5,interaction_range:0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'+Two-Handed',color:blue,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 5 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.5 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2,properties:{properties:['two_handed'],active:['mainhand']}", \
        disable_tool:false}
    
    # diamond sword
    execute as @s[scores={WeaponType=1,WeaponMaterial=6}] run \
    function ssa.dev:modify/weapon {item_name:"Diamond Longsword", \
    attack_damage:7,attack_speed:-2.7,interaction_range:0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'+Two-Handed',color:blue,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 8 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.3 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2,properties:{properties:['two_handed'],active:['mainhand']}", \
        disable_tool:false}
    
    # netherite sword
    execute as @s[scores={WeaponType=1,WeaponMaterial=7}] run \
    function ssa.dev:modify/weapon {item_name:"Purgatite Longsword", \
    attack_damage:8,attack_speed:-2.7,interaction_range:0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'+Two-Handed',color:blue,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 9 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.3 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2,properties:{properties:['two_handed'],active:['mainhand']}", \
        disable_tool:false}

# Hatchet
    # wooden axe
    execute as @s[scores={WeaponType=2,WeaponMaterial=1}] run \
    function ssa.dev:modify/weapon {item_name:"Wooden Hatchet", \
    attack_damage:6,attack_speed:-2.9,interaction_range:-0.3, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'-0.3 Attack Range',color:red,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 7 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.1 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2", \
        disable_tool:false}

    # stone axe
    execute as @s[scores={WeaponType=2,WeaponMaterial=2}] run \
    function ssa.dev:modify/weapon {item_name:"Stone Hatchet", \
    attack_damage:9,attack_speed:-2.9,interaction_range:-0.3, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'-0.3 Attack Range',color:red,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 10 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.1 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2", \
        disable_tool:false}

    # copper axe
    execute as @s[scores={WeaponType=2,WeaponMaterial=3}] run \
    function ssa.dev:modify/weapon {item_name:"Copper Hatchet", \
    attack_damage:8,attack_speed:-2.8,interaction_range:-0.3, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'-0.3 Attack Range',color:red,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 9 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.2 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:1", \
        disable_tool:false}

    # iron axe
    execute as @s[scores={WeaponType=2,WeaponMaterial=4}] run \
    function ssa.dev:modify/weapon {item_name:"Iron Hatchet", \
    attack_damage:9,attack_speed:-2.8,interaction_range:-0.3, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'-0.3 Attack Range',color:red,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 10 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.2 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:1", \
        disable_tool:false}

    # golden axe
    execute as @s[scores={WeaponType=2,WeaponMaterial=5}] run \
    function ssa.dev:modify/weapon {item_name:"Golden Hatchet", \
    attack_damage:8,attack_speed:-2.7,interaction_range:-0.3, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'-0.3 Attack Range',color:red,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 9 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.3 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:1", \
        disable_tool:false}

    # diamond axe
    execute as @s[scores={WeaponType=2,WeaponMaterial=6}] run \
    function ssa.dev:modify/weapon {item_name:"Diamond Hatchet", \
    attack_damage:9,attack_speed:-2.7,interaction_range:-0.3, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'-0.3 Attack Range',color:red,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 10 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.3 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:1", \
        disable_tool:false}

    # netherite axe
    execute as @s[scores={WeaponType=2,WeaponMaterial=7}] run \
    function ssa.dev:modify/weapon {item_name:"Purgatite Hatchet", \
    attack_damage:10,attack_speed:-2.7,interaction_range:-0.3, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'-0.3 Attack Range',color:red,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 11 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.3 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:1", \
        disable_tool:false}
    
# Halberds
    # wooden shovel
    execute as @s[scores={WeaponType=3,WeaponMaterial=2}] run \
    function ssa.dev:modify/weapon {item_name:"Wooden Halberd", \
    attack_damage:7,attack_speed:-3.2,interaction_range:1.0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'+1.0 Attack Range',color:blue,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 8 Attack Damage',color:dark_green,italic:false}, \
        {text:' 0.8 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:3", \
        disable_tool:true}

    # stone shovel
    execute as @s[scores={WeaponType=3,WeaponMaterial=2}] run \
    function ssa.dev:modify/weapon {item_name:"Stone Halberd", \
    attack_damage:7,attack_speed:-3.2,interaction_range:1.0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'+1.0 Attack Range',color:blue,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 8 Attack Damage',color:dark_green,italic:false}, \
        {text:' 0.8 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:3", \
        disable_tool:true}

    # copper shovel
    execute as @s[scores={WeaponType=3,WeaponMaterial=3}] run \
    function ssa.dev:modify/weapon {item_name:"Copper Halberd", \
    attack_damage:7,attack_speed:-3.2,interaction_range:1.0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'+1.0 Attack Range',color:blue,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 8 Attack Damage',color:dark_green,italic:false}, \
        {text:' 0.8 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2", \
        disable_tool:true}

    # iron shovel
    execute as @s[scores={WeaponType=3,WeaponMaterial=4}] run \
    function ssa.dev:modify/weapon {item_name:"Iron Halberd", \
    attack_damage:8,attack_speed:-3.2,interaction_range:1.0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'+1.0 Attack Range',color:blue,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 9 Attack Damage',color:dark_green,italic:false}, \
        {text:' 0.8 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2", \
        disable_tool:true}

    # golden shovel
    execute as @s[scores={WeaponType=3,WeaponMaterial=5}] run \
    function ssa.dev:modify/weapon {item_name:"Golden Halberd", \
    attack_damage:6,attack_speed:-3.1,interaction_range:1.0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'+1.0 Attack Range',color:blue,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 7 Attack Damage',color:dark_green,italic:false}, \
        {text:' 0.9 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2", \
        disable_tool:true}

    # diamond shovel
    execute as @s[scores={WeaponType=3,WeaponMaterial=6}] run \
    function ssa.dev:modify/weapon {item_name:"Diamond Halberd", \
    attack_damage:8,attack_speed:-3.1,interaction_range:1.0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'+1.0 Attack Range',color:blue,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 9 Attack Damage',color:dark_green,italic:false}, \
        {text:' 0.9 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2", \
        disable_tool:true}

    # netherite shovel
    execute as @s[scores={WeaponType=3,WeaponMaterial=7}] run \
    function ssa.dev:modify/weapon {item_name:"Purgatite Halberd", \
    attack_damage:9,attack_speed:-3.1,interaction_range:1.0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:'+1.0 Attack Range',color:blue,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 10 Attack Damage',color:dark_green,italic:false}, \
        {text:' 0.9 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2", \
        disable_tool:true}

# Scythes
    # wooden hoe
    execute as @s[scores={WeaponType=4,WeaponMaterial=2}] run \
    function ssa.dev:modify/weapon {item_name:"Wooden Scythe", \
    attack_damage:4,attack_speed:-2.3,interaction_range:0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 5 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.7 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2", \
        disable_tool:false}

    # stone hoe
    execute as @s[scores={WeaponType=4,WeaponMaterial=2}] run \
    function ssa.dev:modify/weapon {item_name:"Stone Scythe", \
    attack_damage:4,attack_speed:-2.3,interaction_range:0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 5 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.7 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:2", \
        disable_tool:false}

    # copper hoe
    execute as @s[scores={WeaponType=4,WeaponMaterial=3}] run \
    function ssa.dev:modify/weapon {item_name:"Copper Scythe", \
    attack_damage:4,attack_speed:-2.3,interaction_range:0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 5 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.7 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:1", \
        disable_tool:false}

    # iron hoe
    execute as @s[scores={WeaponType=4,WeaponMaterial=4}] run \
    function ssa.dev:modify/weapon {item_name:"Iron Scythe", \
    attack_damage:4,attack_speed:-2.2,interaction_range:0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 5 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.8 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:1", \
        disable_tool:false}

    # golden hoe
    execute as @s[scores={WeaponType=4,WeaponMaterial=5}] run \
    function ssa.dev:modify/weapon {item_name:"Golden Scythe", \
    attack_damage:4,attack_speed:-2.1,interaction_range:0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 5 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.9 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:1", \
        disable_tool:false}

    # diamond hoe
    execute as @s[scores={WeaponType=4,WeaponMaterial=6}] run \
    function ssa.dev:modify/weapon {item_name:"Diamond Scythe", \
    attack_damage:5,attack_speed:-2.2,interaction_range:0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 6 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.8 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:1", \
        disable_tool:false}

    # netherite hoe
    execute as @s[scores={WeaponType=4,WeaponMaterial=7}] run \
    function ssa.dev:modify/weapon {item_name:"Purgatite Scythe", \
    attack_damage:6,attack_speed:-2.2,interaction_range:0, \
        model:advanced, \
        lore:"{text:'Advanced Weapon',color:gray,italic:false}, \
        {text:''}, \
        {text:'When in Main Hand:',color:dark_green,italic:false}, \
        {text:' 7 Attack Damage',color:dark_green,italic:false}, \
        {text:' 1.8 Attack Speed',color:dark_green,italic:false}", \
        weapon_data:"advanced:true,weight:1", \
        disable_tool:false}