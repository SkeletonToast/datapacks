execute as @s[scores={threatened_active=-1}] run function ss_statuses:_display_status {"type":"- You hear the scream of an unhinged beast, a familiar figure who now towers over you, trembling with bloodlust. ","color":"#ff0000","status":"Threatened","append":""}

scoreboard players set @s unnerved_active 0
scoreboard players add @s hesitant_amount 20
function ss_statuses:unnerved