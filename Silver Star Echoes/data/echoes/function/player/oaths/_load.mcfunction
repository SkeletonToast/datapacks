# execute unless score #sse.allegiances value matches 16 run return fail
    # why was this here?? for other pack compatibility???
scoreboard objectives add sse.oath dummy
scoreboard objectives add sse.allegiance dummy

function echoes:player/oaths/ally_assignment

# there are level 1, level 2, and level 3 oaths.
    # they are differentiated by their indentation.
    # generally, level 1 oaths are open to everybody
    # level 2 oaths either require invitation, or a certain amount of progression in a level 1 oath
    # level 3 oaths require a certain amount of progression in another oath
# oaths are grouped by their overarching allegiance.

# Allegiance: Cerulean Court
    # cerulean court
    team add vestige "Vestiges"
    team modify vestige prefix [{text:"["},{text:"Vestige",color:"#d9e8ff"},{text:"] "}]
    team add cerulean_court "Cerulean Court"
    team modify cerulean_court prefix [{text:"["},{text:"Cerulean Court",color:"#2776f5"},{text:"] "}]
            team add cerulean_sentinel "Cerulean Sentinels"
            team modify cerulean_sentinel prefix [{text:"["},{text:"Sentinel",color:"#2776f5"},{text:"] "}]
            team add retainer "Retainers"
            team modify retainer prefix [{text:"["},{text:"Retainer",color:"#2776f5"},{text:"] "}]

    # haligsundri / ritesmaidens
    team add haligsundr "Haligsundri"
    team modify haligsundr prefix [{text:"["},{text:"Haligsundr",color:"#eca568"},{text:"] "}]
        team add ritesmaiden "Ritesmaidens"
        team modify ritesmaiden prefix "[Ritesmaiden] "

    # ichor imperya
    team add imperyal "Ichor Imperya"
    team modify imperyal prefix [{text:"["},{text:"Imperyal",color:"#F5B027"},{text:"] "}]
        team add inquisitor "Inquisitors"
        team modify inquisitor prefix [{text:"["},{text:"Inquisitor",color:"#F5B027"},{text:"] "}]
            team add praetor "Praetors"
            team modify praetor prefix [{text:"["},{text:"Praetor",color:"#f57627"},{text:"] "}]

    # angel hunters
        team add red_gold "Order of Red Gold"
        team modify red_gold prefix [{text:"["},{text:"Red Gold",color:"#f57627"},{text:"] "}]
            team add black_gold "Black Gold Angel Hunters"
            team modify black_gold prefix [{text:"["},{text:"Angel Hunter",color:"#f0c815"},{text:"] "}]

    # overgrowth
    team add lonwood "Lonwood"
    team modify lonwood prefix [{text:"["},{text:"Lonwood",color:"#379462"},{text:"] "}]
        team add arborknight "Arborknights"
        team modify arborknight prefix [{text:"["},{text:"Arborknight",color:"#379462"},{text:"] "}]
            team add kestrel "Kestrels"
            team modify kestrel prefix [{text:"["},{text:"Kestrel",color:"#1a7c47"},{text:"] "}]

    # arcanists
        team add arcanist "Arcanists"
        team modify arcanist prefix [{text:"["},{text:"Arcanist",color:"#5cd7d3"},{text:"] "}]

    # rasaya
    team add queenshriven "Queenshriven"
    team modify queenshriven prefix [{text:"["},{text:"Queenshriven",color:"#dec159"},{text:"] "}]
        team add ardent "Ardents"
        team modify ardent prefix [{text:"["},{text:"Ardent",color:"#dec159"},{text:"] "}]

# Allegiance: Neutral
    # students
        team add student_entropy "Student (Entropy)"
        team add student_vital "Student (Vitalism)"
        # team add student_justice "Student (Justice)"
        team add student_artist "Student (Artistry)"
        team add student_stellography "Student (Stellography)"
        team add student_scribe "Student (Script)"
        team modify student_entropy prefix [{text:"["},{text:"Eigengrau",color:"#6c229b"},{text:"] "}]
        team modify student_vital prefix [{text:"["},{text:"Eigengrau",color:"#de8359"},{text:"] "}]
        # team modify student_justice prefix "[Student (Justice)] "
        team modify student_artist prefix [{text:"["},{text:"Eigengrau",color:"#f5ed00"},{text:"] "}]
        team modify student_stellography prefix [{text:"["},{text:"Eigengrau",color:"#ff4b3e"},{text:"] "}]
        team modify student_scribe prefix [{text:"["},{text:"Eigengrau",color:"#a89462"},{text:"] "}]

    # ashengard
        team add ashengard "Ashengard"
        team modify ashengard prefix [{text:"["},{text:"Ashengard",color:"#969081"},{text:"] "}]
            team add revenant "Ashen Revenant"
            team modify revenant prefix [{text:"["},{text:"Revenant",color:"#969081"},{text:"] "}]

    # entertainers
        team add entertainer "Entertainers"
        team modify entertainer prefix [{text:"["},{text:"Entertainer",color:"#ff4b3e"},{text:"] "}]

    # orderkeepers
        team add orderkeeper "Orderkeepers"
        team modify orderkeeper prefix [{text:"["},{text:"Orderkeeper",color:"#4d27f5"},{text:"] "}]

    # cindersworn
    team add firekeeper "Firekeepers"
    team modify firekeeper prefix [{text:"["},{text:"Firekeeper",color:"#ab7b43"},{text:"] "}]
            team add kindled_knight "Kindled Knights"
            team modify kindled_knight prefix [{text:"["},{text:"Kindled Knight",color:"#ef8f21"},{text:"] "}]

    # elkwyn
    team add elkwyn "House of Elkwyn"
    team modify elkwyn prefix [{text:"["},{text:"Elkwyn",color:"#c2996b"},{text:"] "}]

    # draese
        team add draesir_ferina "Draese Anferina"
        team add draesir_ordonna "Draese Anordonna"
        team add draesir_phaera "Draese Anphaera"
        team modify draesir_ferina prefix "[Ichordraese] "
        team modify draesir_ordonna prefix "[Lightdraese] "
        team modify draesir_phaera prefix "[Stormdraese] "

# Allegiance: Runahl / Havoc
    # proscripts
    team add proscript "Proscripts"
    team modify proscript prefix [{text:"["},{text:"Proscript",color:"#ab4343"},{text:"] "}]

    # havoc allegiant
        team add havoc_allegiant "Disruptors"
        team modify havoc_allegiant prefix [{text:"["},{text:"Disruptor",color:"#6c229b"},{text:"] "}]

# Other Allegiance
    # nightbrands
        team add nightbrand "Nightbrands"
        team modify nightbrand prefix [{text:"["},{text:"Nightbrand",color:"#52229b"},{text:"] "}]

    # other various groups
    team add silverseeker "Silverseekers"
    team add nightjar "Nightjars"
    team add heron "Herons"
    team modify silverseeker prefix [{text:"["},{text:"Silverseeker",color:"#ebe7e1"},{text:"] "}]
    team modify nightjar prefix [{text:"["},{text:"Nightjar",color:"#7c4bc6"},{text:"] "}]
    team modify heron prefix [{text:"["},{text:"Heron",color:"#ffd641"},{text:"] "}]