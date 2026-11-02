$execute as @a[scores={execute.attacker=$(ssid)}] if score @s execute.targeted_timer > @a[limit=1,scores={ssid=$(value)}] execute.targeted_timer run return fail
$$(run)
#pp hehe