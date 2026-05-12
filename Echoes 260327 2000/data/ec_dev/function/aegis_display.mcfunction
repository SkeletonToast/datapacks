function ss_lib:fetch/absorption {"s":"@s"}

execute as @s[scores={FallFlying=1}] run return fail

# execute as @s[scores={aegis_display_level=8,Absorption=0}] run function echoes:particles/aegis_ring_break

$execute as @s[scores={aegis_display_level=8,Absorption=..14}] run function echoes:particles/aegis_link_break {"pos":"~.35 ~$(vertical) ~-.35","display":"$(display)"}
$execute as @s[scores={aegis_display_level=7,Absorption=..12}] run function echoes:particles/aegis_link_break {"pos":"~ ~$(vertical) ~-.5","display":"$(display)"}
$execute as @s[scores={aegis_display_level=6,Absorption=..10}] run function echoes:particles/aegis_link_break {"pos":"~-.35 ~$(vertical) ~-.35","display":"$(display)"}
$execute as @s[scores={aegis_display_level=5,Absorption=..8}] run function echoes:particles/aegis_link_break {"pos":"~-.5 ~$(vertical) ~","display":"$(display)"}
$execute as @s[scores={aegis_display_level=4,Absorption=..6}] run function echoes:particles/aegis_link_break {"pos":"~-.35 ~$(vertical) ~.35","display":"$(display)"}
$execute as @s[scores={aegis_display_level=3,Absorption=..4}] run function echoes:particles/aegis_link_break {"pos":"~ ~$(vertical) ~.5","display":"$(display)"}
$execute as @s[scores={aegis_display_level=2,Absorption=..2}] run function echoes:particles/aegis_link_break {"pos":"~.35 ~$(vertical) ~.35","display":"$(display)"}
$execute as @s[scores={aegis_display_level=1,Absorption=0}] run function echoes:particles/aegis_link_break {"pos":"~.5 ~$(vertical) ~","display":"$(display)"}

scoreboard players set @s[scores={Absorption=0}] aegis_display_level 0
$execute as @s[scores={Absorption=01..}] run function echoes:particles/aegis_link {"from":"$(base_color)","to":"1,0,0","pos":"~.5 ~$(vertical) ~","level":1,"display":"$(display)"}
$execute as @s[scores={Absorption=03..}] run function echoes:particles/aegis_link {"from":"$(base_color)","to":"1,.67,0","pos":"~.35 ~$(vertical) ~.35","level":2,"display":"$(display)"}
$execute as @s[scores={Absorption=05..}] run function echoes:particles/aegis_link {"from":"$(base_color)","to":"1,1,.33","pos":"~ ~$(vertical) ~.5","level":3,"display":"$(display)"}
$execute as @s[scores={Absorption=07..}] run function echoes:particles/aegis_link {"from":"$(base_color)","to":".33,1,.33","pos":"~-.35 ~$(vertical) ~.35","level":4,"display":"$(display)"}
$execute as @s[scores={Absorption=09..}] run function echoes:particles/aegis_link {"from":"$(base_color)","to":".33,1,1","pos":"~-.5 ~$(vertical) ~","level":5,"display":"$(display)"}
$execute as @s[scores={Absorption=11..}] run function echoes:particles/aegis_link {"from":"$(base_color)","to":".33,.33,1","pos":"~-.35 ~$(vertical) ~-.35","level":6,"display":"$(display)"}
$execute as @s[scores={Absorption=13..}] run function echoes:particles/aegis_link {"from":"$(base_color)","to":".67,0,.67","pos":"~ ~$(vertical) ~-.5","level":7,"display":"$(display)"}
$execute as @s[scores={Absorption=15..}] run function echoes:particles/aegis_link {"from":"$(base_color)","to":"1.0,.33,1.0","pos":"~.35 ~$(vertical) ~-.35","level":8,"display":"$(display)"}