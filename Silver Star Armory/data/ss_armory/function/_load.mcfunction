scoreboard players set $ssa.gamerule.attack_speed_cap value 50

# propertied weapons
scoreboard objectives add HasPropertiedWeapon dummy

scoreboard objectives add LongbowCharge dummy
scoreboard objectives add CompositeBowCharge dummy

scoreboard objectives add MultishotGun dummy
scoreboard objectives add MultishotGunType dummy
scoreboard objectives add MultishotTimer dummy
scoreboard objectives add GunType dummy

scoreboard objectives add PaintballType dummy
scoreboard objectives add PaintballReload dummy
scoreboard objectives add PaintballHitsDealt dummy
scoreboard objectives add PaintballHitsTaken dummy

scoreboard objectives add SeekerDirection dummy
scoreboard objectives add SeekerLifetime dummy

scoreboard objectives add InfinitePowderslingAmmo dummy

scoreboard objectives add powdersling_cooldown dummy
scoreboard objectives add gun_base_damage dummy

# attack speed
scoreboard objectives add ssa.attack_speed_cap dummy
scoreboard objectives add ssa.attack_speed_cap.timer dummy
scoreboard objectives add ssa.attack_speed_cap.attack_speed dummy

# riposte
scoreboard objectives add riposte_damage_blocked custom:damage_blocked_by_shield
scoreboard objectives add riposte_timer dummy

execute as @a[scores={ssid=528}] run function ss_lib:load_message {namespace:"ֆɨʟʋɛʀ ֆȶǟʀ",datapack:"Armory"}
