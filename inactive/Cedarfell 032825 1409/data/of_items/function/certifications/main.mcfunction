execute as @a[scores={ItemSelected=1},advancements={of_items:artifacts/using_clock=true}] \
    unless entity @s[scores={artifact_type=1..}] \
    if items entity @s weapon.mainhand clock[custom_data~{certification:{}}] run \
    function of_items:certifications/certify {"hand":"main"}
execute as @a[scores={ItemOffhand=1},advancements={of_items:artifacts/using_clock=true}] \
    unless entity @s[scores={artifact_type=1..}] \
    if items entity @s weapon.offhand clock[custom_data~{certification:{}}] run \
    function of_items:certifications/certify {"hand":"off"}

execute as @a[scores={artifact_type=1..3},advancements={of_items:artifacts/using_clock=true}] at @s anchored eyes run particle composter ^ ^ ^ 0.5 0.5 0.5 0 1 normal @a

execute as @a[scores={artifact_type=1..3,used_clock=1..}] run scoreboard players operation @s of_job = @s artifact_type
execute as @a[scores={artifact_type=1..3,used_clock=1..}] at @s anchored eyes positioned ^ ^ ^ run function of_particles:change_character
execute as @a[scores={artifact_type=1..3,used_clock=1..}] at @s anchored eyes positioned ^ ^ ^ run playsound entity.player.levelup master @s