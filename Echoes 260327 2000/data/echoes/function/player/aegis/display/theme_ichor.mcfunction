function ss_lib:fetch/absorption {"s":"@s"}

execute as @s[scores={FallFlying=1}] run return fail

# execute as @s[scores={aegis_display_level=8,Absorption=0}] run function echoes:particles/aegis_ring_break

$function echoes:player/aegis/display/break {"vertical":"$(vertical)","display":"$(display)","particle":"dust{color:[1,1,1],scale:1}"}
function echoes:player/aegis/display/calculate_display_level

scoreboard players set @s[scores={Absorption=0}] aegis_display_level 0
$execute as @s[scores={aegis_display_level=1..}] run function echoes:particles/aegis_link {"from":"$(base_color)","to":"1,0,0","pos":"~.5 ~$(vertical) ~","display":"$(display)"}
$execute as @s[scores={aegis_display_level=2..}] run function echoes:particles/aegis_link {"from":"$(base_color)","to":"1,.67,0","pos":"~.35 ~$(vertical) ~.35","display":"$(display)"}
$execute as @s[scores={aegis_display_level=3..}] run function echoes:particles/aegis_link {"from":"$(base_color)","to":"1,1,.33","pos":"~ ~$(vertical) ~.5","display":"$(display)"}
$execute as @s[scores={aegis_display_level=4..}] run function echoes:particles/aegis_link {"from":"$(base_color)","to":".33,1,.33","pos":"~-.35 ~$(vertical) ~.35","display":"$(display)"}
$execute as @s[scores={aegis_display_level=5..}] run function echoes:particles/aegis_link {"from":"$(base_color)","to":".33,1,1","pos":"~-.5 ~$(vertical) ~","display":"$(display)"}
$execute as @s[scores={aegis_display_level=6..}] run function echoes:particles/aegis_link {"from":"$(base_color)","to":".33,.33,1","pos":"~-.35 ~$(vertical) ~-.35","display":"$(display)"}
$execute as @s[scores={aegis_display_level=7..}] run function echoes:particles/aegis_link {"from":"$(base_color)","to":".67,0,.67","pos":"~ ~$(vertical) ~-.5","display":"$(display)"}
$execute as @s[scores={aegis_display_level=8..}] run function echoes:particles/aegis_link {"from":"$(base_color)","to":"1.0,.33,1.0","pos":"~.35 ~$(vertical) ~-.35","display":"$(display)"}