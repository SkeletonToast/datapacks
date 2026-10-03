tellraw @s [""]
tellraw @s [{"text":"✦ Settings Menu: Silver Star Echoes ✧","color":"white"}]
tellraw @s [{"text":"\nAegis Visibility (Self)","color":"gray"}, \
{"text":"\n[","color":"gray"},{"text":"ENABLE","color":green,"click_event":{"action":"run_command","command":"trigger sse.settings.aegis_self_visibility set 1","command":"trigger sse.settings.aegis_visibility set 1"}},{"text":"]","color":"gray"}, \
{"text":"   [","color":"gray"},{"text":"DISABLE","color":red,"click_event":{"action":"run_command","command":"trigger sse.settings.aegis_self_visibility set 0"}},{"text":"]","color":"gray"} ]
tellraw @s [{"text":"\nAegis Visibility (All)","color":"gray"}, \
{"text":"\n[","color":"gray"},{"text":"ENABLE","color":green,"click_event":{"action":"run_command","command":"trigger sse.settings.aegis_visibility set 1"}},{"text":"]","color":"gray"}, \
{"text":"   [","color":"gray"},{"text":"DISABLE","color":red,"click_event":{"action":"run_command","command":"trigger sse.settings.aegis_visibility set 0"}},{"text":"]","color":"gray"} ]
tellraw @s [{"text":"\nAttack Buff Visibility","color":"gray"}, \
{"text":"\n[","color":"gray"},{"text":"ENABLE","color":green,"click_event":{"action":"run_command","command":"trigger sse.settings.attack_buff_visibility set 1"}},{"text":"]","color":"gray"}, \
{"text":"   [","color":"gray"},{"text":"DISABLE","color":red,"click_event":{"action":"run_command","command":"trigger sse.settings.attack_buff_visibility set 0"}},{"text":"]","color":"gray"} ]
tellraw @s [{"text":"\n3rd-Person Tact-Based Camera Distance","color":"gray"}, \
{"text":"\n[","color":"gray"},{"text":"ENABLE","color":green,"click_event":{"action":"run_command","command":"trigger sse.settings.tact_camera_distance set 1"}},{"text":"]","color":"gray"}, \
{"text":"   [","color":"gray"},{"text":"DISABLE","color":red,"click_event":{"action":"run_command","command":"trigger sse.settings.tact_camera_distance set 0"}},{"text":"]","color":"gray"} ]