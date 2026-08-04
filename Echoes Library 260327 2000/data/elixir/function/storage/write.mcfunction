$execute store result score @s generic_a run data get storage ss_alchemist:$(ssid) status.$(status).$(value).amplifier
$scoreboard players set @s generic_b $(amplifier)

$execute if score @s generic_a <= @s generic_b \
    store result storage ss_alchemist:$(ssid) status.$(status).stored.amplifier int 1 run \
    data get storage ss_alchemist:$(ssid) status.$(status).$(value).amplifier

$execute if score @s generic_a <= @s generic_b \
    store result storage ss_alchemist:$(ssid) status.$(status).stored.duration int 1 run \
    data get storage ss_alchemist:$(ssid) status.$(status).$(value).duration

# $execute if score @s generic_a <= @s generic_b \
    store result storage ss_alchemist:$(ssid) status.$(status).stored.duration int 1 run \
    data get storage ss_alchemist:$(ssid) status.$(status).$(value).duration

# apply stored ones if there's no data at the next location