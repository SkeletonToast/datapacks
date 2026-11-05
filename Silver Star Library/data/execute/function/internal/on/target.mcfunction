$execute as @a[scores={execute.attacker=$(value)}] if score @s execute.targeted_timer > @a[limit=1,scores={ssid=$(ssid)}] execute.targeted_timer run return fail
$$(run)
#pp hehe