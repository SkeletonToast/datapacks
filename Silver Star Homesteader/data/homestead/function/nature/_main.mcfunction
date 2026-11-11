execute as @r if score $moon_phase value matches 1 if score $day_time value matches 13000..22999 run function homestead:nature/moon/full
execute as @r if score $moon_phase value matches 5 if score $day_time value matches 13000..22999 run function homestead:nature/moon/new
    # run with @r just because they need a living executor for some of the subfunctions