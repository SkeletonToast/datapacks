execute as @s[tag=!InSanctuaryAbsorption] run return fail
effect give @s[scores={Absorption=16..  }] absorption 10 4 true
effect give @s[scores={Absorption=12..15}] absorption 10 3 true
effect give @s[scores={Absorption=8..11 }] absorption 10 2 true
effect give @s[scores={Absorption=4..7  }] absorption 10 1 true
effect give @s[scores={Absorption=..3   }] absorption 10 0 true
tag @s remove InSanctuaryAbsorption