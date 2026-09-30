# origin 1: humble
# origin 2: civil
# origin 3: gilded
# origin 4: angelic

execute as @a unless entity @s[scores={Character=0..}] run scoreboard players set @s Character 1
execute as @a run attribute @s scale modifier remove height

# Meat_Gum | Zion Araceli | Angel
scoreboard players set @r[name="Meat_Gum",scores={Character=1}] of_origin 4
scoreboard players add @r[name="Meat_Gum",scores={Character=1}] ornithal 1
scoreboard players add @r[name="Meat_Gum",scores={Character=1}] luthis 1
scoreboard players set @r[name="Meat_Gum",scores={Character=1}] trait003 4
attribute @r[name="Meat_Gum",scores={Character=1}] scale modifier add height 0.07 add_value

# Meat_Gum | Nikolai Vasilyev | Human
scoreboard players set @r[name="Meat_Gum",scores={Character=2}] of_origin 2
scoreboard players add @r[name="Meat_Gum",scores={Character=2}] addam 1
scoreboard players add @r[name="Meat_Gum",scores={Character=2}] addam 1
attribute @r[name="Meat_Gum",scores={Character=2}] scale modifier add height -0.03 add_value

# Meat_Gum | Sen Fenech | Rabbit
scoreboard players set @r[name="Meat_Gum",scores={Character=3}] of_origin 1
scoreboard players add @r[name="Meat_Gum",scores={Character=3}] pelagi 1
scoreboard players add @r[name="Meat_Gum",scores={Character=3}] bovari 1
attribute @r[name="Meat_Gum",scores={Character=3}] scale modifier add height -0.11 add_value

# SkeletonToast | Roy Von Hesska | Lion
scoreboard players set @r[name="SkeletonToast",scores={Character=1}] of_origin 3
scoreboard players add @r[name="SkeletonToast",scores={Character=1}] caine 1
scoreboard players add @r[name="SkeletonToast",scores={Character=1}] addam 1

# SkeletonToast | Aelfric Gainsborough | Dragon
scoreboard players set @r[name="SkeletonToast",scores={Character=2}] of_origin 3
scoreboard players add @r[name="SkeletonToast",scores={Character=2}] aentos 1
scoreboard players add @r[name="SkeletonToast",scores={Character=2}] fenris 1
attribute @r[name="SkeletonToast",scores={Character=2}] scale modifier add height -0.07 add_value

# SkeletonToast | Patience Abernathy | Fox
scoreboard players set @r[name="SkeletonToast",scores={Character=3}] of_origin 1
scoreboard players add @r[name="SkeletonToast",scores={Character=3}] caine 1
scoreboard players add @r[name="SkeletonToast",scores={Character=3}] fenris 1
attribute @r[name="SkeletonToast",scores={Character=3}] scale modifier add height -0.07 add_value

# KidInTheCorner | Devi Vivienne | Angel
scoreboard players set @r[name="KidInTheCorner",scores={Character=1}] of_origin 4
scoreboard players add @r[name="KidInTheCorner",scores={Character=1}] ornithal 1
scoreboard players add @r[name="KidInTheCorner",scores={Character=1}] sothis 1
effect give @r[name="KidInTheCorner",scores={Character=1},predicate=ss_lib:is_sneaking] slow_falling 1 0 true
attribute @r[name="KidInTheCorner",scores={Character=1}] scale modifier add height -0.12 add_value

# KidInTheCorner | Sirius Desdemona | Goat
scoreboard players set @r[name="KidInTheCorner",scores={Character=2}] of_origin 1
scoreboard players add @r[name="KidInTheCorner",scores={Character=2}] bovari 1
scoreboard players add @r[name="KidInTheCorner",scores={Character=2}] ramileth 1
execute as @a[name="KidInTheCorner",scores={Character=2,DamageTaken=1..}] unless entity @s[scores={hysterical_timer=300..}] run function of_characters:sirius_hysterical_trigger
attribute @r[name="KidInTheCorner",scores={Character=2}] scale modifier add height -0.04 add_value

# KidInTheCorner | Scum | Fish
scoreboard players set @r[name="KidInTheCorner",scores={Character=3}] of_origin 1
scoreboard players add @r[name="KidInTheCorner",scores={Character=3}] berethos 1
scoreboard players add @r[name="KidInTheCorner",scores={Character=3}] thallas 1
scoreboard players add @r[name="KidInTheCorner",scores={Character=3}] wet_timer 1
attribute @r[name="KidInTheCorner",scores={Character=3}] scale modifier add height -0.10 add_value

# CrackerPacket7 | Aaron Abner | Deer
scoreboard players set @r[name="CrackerPacket7",scores={Character=1}] of_origin 2
scoreboard players add @r[name="CrackerPacket7",scores={Character=1}] bovari 1
scoreboard players add @r[name="CrackerPacket7",scores={Character=1}] cerunnos 1
attribute @r[name="CrackerPacket7",scores={Character=1}] scale modifier add height -0.06 add_value

# CrackerPacket7 | Dominique Alcott | Centipede
scoreboard players set @r[name="CrackerPacket7",scores={Character=2}] of_origin 2
scoreboard players add @r[name="CrackerPacket7",scores={Character=2}] aentos 1
scoreboard players add @r[name="CrackerPacket7",scores={Character=2}] paelus 1
attribute @r[name="CrackerPacket7",scores={Character=2}] scale modifier add height -0.10 add_value
tag @r[name="CrackerPacket7",scores={Character=2}] add sensitive_to_bane

# OfAllTrades0590 | Oliver Lafew | Human
scoreboard players set @r[name="OfAllTrades0590",scores={Character=1}] of_origin 3
scoreboard players add @r[name="OfAllTrades0590",scores={Character=1}] addam 1
scoreboard players add @r[name="OfAllTrades0590",scores={Character=1}] addam 1
attribute @r[name="OfAllTrades0590",scores={Character=1}] scale modifier add height -0.08 add_value

# OfAllTrades0590 | Larry Cheeserton | Mouse
scoreboard players set @r[name="OfAllTrades0590",scores={Character=2}] of_origin 3
scoreboard players add @r[name="OfAllTrades0590",scores={Character=2}] addam 1
scoreboard players add @r[name="OfAllTrades0590",scores={Character=2}] pelagi 1
attribute @r[name="OfAllTrades0590",scores={Character=2}] scale modifier add height -0.30 add_value

# OfAllTrades0590 | Icarus Charaka | Bird or something
scoreboard players set @r[name="OfAllTrades0590",scores={Character=3}] of_origin 1
scoreboard players add @r[name="OfAllTrades0590",scores={Character=3}] ornithal 1
scoreboard players add @r[name="OfAllTrades0590",scores={Character=3}] caine 1
attribute @r[name="OfAllTrades0590",scores={Character=3}] scale modifier add height -0.03 add_value

# _Phantomet | Odette Mors | Human
scoreboard players set @r[name="_Phantomet",scores={Character=1}] of_origin 3
scoreboard players add @r[name="_Phantomet",scores={Character=1}] addam 1
scoreboard players add @r[name="_Phantomet",scores={Character=1}] addam 1
attribute @r[name="_Phantomet",scores={Character=1}] scale modifier add height -0.04 add_value

# jawswirl | Sawyer Underhille | Human
scoreboard players set @r[name="jawswirl",scores={Character=1}] of_origin 2
scoreboard players add @r[name="jawswirl",scores={Character=1}] addam 1
scoreboard players add @r[name="jawswirl",scores={Character=1}] addam 1
attribute @r[name="jawswirl",scores={Character=1}] scale modifier add height -0.10 add_value

# phroggore | Keith Walshe | Cow
scoreboard players set @r[name="phroggore",scores={Character=1}] of_origin 3
scoreboard players add @r[name="phroggore",scores={Character=1}] bovari 1
scoreboard players add @r[name="phroggore",scores={Character=1}] addam 1
attribute @r[name="phroggore",scores={Character=1}] scale modifier add height 0.01 add_value

# ohgodthepain | Gabriel Walker | Bird
scoreboard players set @r[name="ohgodthepain",scores={Character=1}] of_origin 3
scoreboard players add @r[name="ohgodthepain",scores={Character=1}] ornithal 1
scoreboard players add @r[name="ohgodthepain",scores={Character=1}] addam 1
attribute @r[name="ohgodthepain",scores={Character=1}] scale modifier add height -0.02 add_value