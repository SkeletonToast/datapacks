$execute as @s[scores={fortified_active=-1}] run function ss_statuses:_display_status {"type":"+","color":"#ffd000","status":"Fortified",append:" ($(multiplier)x)"}

$attribute @s minecraft:armor modifier add fortified_armor $(multiplier) add_multiplied_total
$attribute @s minecraft:armor_toughness modifier add fortified_armor_toughness $(multiplier) add_multiplied_total

scoreboard players set @s fortified_active 1

# i dont really remember what this was but its just gonna chill here for now
    # (x * (1 + y)^z) = ((x / y) * 0.01) + ((z * 0.11) * x * z)

    # 130 = x + ((yz)^z * x)
        # x = 100
        # y = 0.3
        # z = 1

    # 169 = x + (((y * z) + (y ^ z)) * x)
        # x = 100
        # y = 0.3
        # z = 2