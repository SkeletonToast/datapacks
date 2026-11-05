$execute as $(s) if score $true true matches $(bypass_check) store result score @s BaseMaxHealth run attribute @s max_health base get
$execute as $(s) if score $true true matches $(bypass_check) store result score @s MaxHealth run attribute @s max_health get

# non-bypassed check
$execute if score $true true matches $(bypass_check) run return fail
$execute as $(s) if score @s BaseMaxHealth matches -1 store result score @s BaseMaxHealth run attribute @s max_health base get
$execute as $(s) if score @s MaxHealth matches -1 store result score @s MaxHealth run attribute @s max_health get