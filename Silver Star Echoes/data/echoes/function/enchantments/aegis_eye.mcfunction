function ss_lib:fetch/absorption {s:"@s",bypass_check:false}
effect give @s[scores={Absorption=20..}] night_vision 11 0 true
effect clear @s[scores={Absorption=20..}] blindness
effect clear @s[scores={Absorption=20..}] darkness