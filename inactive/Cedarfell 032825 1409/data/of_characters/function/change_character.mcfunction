$scoreboard players set @s Character $(character)
$scoreboard players operation @s of_job = @s of_job_$(character)
function of_characters:refresh_character
execute at @s anchored eyes positioned ^ ^ ^ run function of_particles:change_character
function of_characters:change_character_text