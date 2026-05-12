execute as @a[scores={TimeSinceRest=1}] run function ss_statuses:respawn_timer_reset

execute as @e[tag=StatusEligible,scores={bleeding_timer=1..}] unless entity @s[scores={bleeding_active=1}] run function ss_statuses:bleeding {"damage":"1"}
# execute as @a[scores={bouncy_timer=1..}] unless entity @s[scores={bouncy_active=1}] run function ss_statuses:bouncy
execute as @a[scores={disarmed_timer=1..}] unless entity @s[scores={disarmed_active=1}] run function ss_statuses:disarmed
# execute as @a[scores={disabled_timer=1..}] run function ss_statuses:disabled
execute as @a[scores={disoriented_timer=1..}] run function ss_statuses:disoriented
execute as @a[scores={enshrouded_timer=1..}] run function ss_statuses:enshrouded
# execute as @a[scores={fragile_timer=1..}] unless entity @s[scores={fragile_active=1}] run function ss_statuses:fragile {"multiplier":"0.4"}
# execute as @a[scores={frenzied_timer=1..}] unless entity @s[scores={frenzied_active=1}] run function ss_statuses:frenzied {"amplifier":"1"}
execute as @a[scores={frightened_timer=1..}] unless entity @s[scores={frightened_active=1}] run function ss_statuses:frightened {"multiplier":"0.2"}
execute as @e[tag=StatusEligible,scores={frozen_timer=1..}] unless entity @s[scores={frozen_active=1}] run function ss_statuses:frozen
execute as @e[tag=StatusEligible,scores={hobbled_timer=1..}] unless entity @s[scores={hobbled_active=1}] run function ss_statuses:hobbled
execute as @a[scores={incendiary_timer=1..}] run function ss_statuses:incendiary
    execute as @a[scores={incendiary_timer=-2}] run function ss_statuses:incendiary
        # just here fo now because erdefret uses incendiaryness to keep heat up
execute as @a[scores={recover_timer=1..}] unless entity @s[scores={recover_active=1}] run function ss_statuses:recovering {"amplifier":"2"}
execute as @e[tag=StatusEligible,scores={rooted_timer=1..}] unless entity @s[scores={rooted_active=1}] run function ss_statuses:rooted
# execute as @a[scores={satiated_timer=1..}] unless entity @s[scores={satiated_active=1}] run function ss_statuses:satiated
execute as @e[tag=StatusEligible,scores={shocked_timer=1..}] unless entity @s[scores={shocked_active=1}] run function ss_statuses:shocked
# execute as @a[scores={surgical_timer=1..}] unless entity @s[scores={surgical_active=1}] run function ss_statuses:surgical {"multiplier":"0.2"}
execute as @a[scores={terrified_timer=1..}] unless entity @s[scores={terrified_active=1}] run function ss_statuses:terrified {"multiplier":"0.3"}
execute as @a[scores={tormented_timer=1..}] unless entity @s[scores={tormented_active=1}] run function ss_statuses:tormented
execute as @a[scores={unnerved_timer=1..}] unless entity @s[scores={unnerved_active=1}] run function ss_statuses:unnerved {"multiplier":"0.2"}
# execute as @a[scores={vulnerable_timer=1..}] unless entity @s[scores={vulnerable_active=1}] run function ss_statuses:vulnerable {"multiplier":"0.2"}
execute as @e[tag=StatusEligible,scores={webbed_timer=1..}] unless entity @s[scores={webbed_active=1}] run function ss_statuses:webbed
execute as @a[gamemode=!spectator,scores={wet_timer=1..}] run function ss_statuses:wet
    # execute as @a[scores={wet_timer=1..}] unless entity @s[scores={wet_active=1}] run function ss_statuses:wet

execute as @e[tag=StatusEligible,scores={encumbered_amount=1..}] run function ss_statuses:encumbered
execute as @a[scores={aggressive_amount=1..}] run function ss_statuses:aggressive
execute as @e[tag=StatusEligible,scores={hesitant_amount=1..}] run function ss_statuses:hesitant