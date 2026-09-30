scoreboard objectives add Character dummy

# legacy jobs system
scoreboard objectives add of_job dummy

# updated jobs system
    scoreboard objectives add nomad dummy
    scoreboard objectives add pioneer dummy
    scoreboard objectives add inquisitor dummy
    scoreboard objectives add hunter dummy
    scoreboard objectives add conscript dummy
    scoreboard objectives add praetor dummy
    scoreboard objectives add rancher dummy
    scoreboard objectives add laborer dummy
    scoreboard objectives add scholar dummy
    # jobs
    scoreboard objectives add of_job_1 dummy
    scoreboard objectives add of_job_2 dummy
    scoreboard objectives add of_job_3 dummy
    # praetor
    scoreboard objectives add praetor_combo dummy
    scoreboard objectives add praetor_sprint dummy
    # conscript
    scoreboard objectives add conscript_count dummy
    scoreboard objectives add conscript_phalanx dummy
    scoreboard objectives add conscript_phalanx_damage minecraft.custom:minecraft.damage_blocked_by_shield
    # hunter
    scoreboard objectives add hunting_timer dummy
    # scholar
    scoreboard objectives add scholar_brewing_stand minecraft.custom:interact_with_brewingstand
    scoreboard objectives add scholar_furnace minecraft.custom:interact_with_furnace
    scoreboard objectives add scholar_blast_furnace minecraft.custom:interact_with_blast_furnace
    scoreboard objectives add scholar_smoker minecraft.custom:interact_with_smoker
    scoreboard objectives add scholar_food_tick dummy
    scoreboard objectives add scholar_food dummy
    # laborer
    function of_characters:homesteader/laborer/create_scores
    # rancher
    function of_characters:homesteader/rancher/create_scores

scoreboard objectives add weapon_proficiency dummy
scoreboard objectives add armor_proficiency dummy
# scoreboard objectives remove proficiency

scoreboard objectives add of_origin dummy

scoreboard objectives add sirius_insanity dummy

scoreboard objectives add addam dummy
scoreboard objectives add aentos dummy
scoreboard objectives add berethos dummy
scoreboard objectives add bovari dummy
scoreboard objectives add caine dummy
scoreboard objectives add cerunnos dummy
scoreboard objectives add fenris dummy
scoreboard objectives add ornithal dummy
scoreboard objectives add paelus dummy
scoreboard objectives add pelagi dummy
scoreboard objectives add ramileth dummy
scoreboard objectives add thallas dummy

scoreboard objectives add luthis dummy
scoreboard objectives add sothis dummy

scoreboard objectives add blood dummy

function of_characters:stats/_load