# execute unless score #sse.allegiances value matches 16 run return fail
    # why was this here?? for other pack compatibility???
scoreboard objectives add sse.allegiance dummy

# there are level 1, level 2, and level 3 oaths.
    # they are differentiated by their indentation.
    # generally, level 1 oaths are open to everybody
    # level 2 oaths either require invitation, or a certain amount of progression in a level 1 oath
    # level 3 oaths require a certain amount of progression in another oath
# oaths are grouped by their overarching allegiance.

# Allegiance: Cerulean Court
    # cerulean court
    team add vestige "Vestiges"
    team modify vestige prefix "[Vestige] "
    team add cerulean_court "Cerulean Court"
    team modify cerulean_court prefix "[Cerulean] "
            team add cerulean_sentinel "Cerulean Sentinels"
            team modify cerulean_sentinel prefix "[Sentinel] "
            team add retainer "Retainers"
            team modify retainer prefix "[Retainer] "

    # haligsundri / ritesmaidens
    team add haligsundr "Haligsundri"
    team modify haligsundr prefix "[Haligsundr] "
        team add ritesmaiden "Ritesmaidens"
        team modify ritesmaiden prefix "[Ritesmaiden] "

    # ichor imperya
    team add imperyal "Ichor Imperya"
    team modify imperyal prefix "[Imperyal] "
        team add inquisitor "Inquisitors"
        team modify inquisitor prefix "[Inquisitor] "
            team add praetor "Praetors"
            team modify praetor prefix "[Praetor] "

    # angel hunters
        team add red_gold "Order of Red Gold"
        team modify red_gold prefix "[Red Gold] "
            team add black_gold "Black Gold Angel Hunters"
            team modify black_gold prefix "[Angel Hunter] "

    # overgrowth
    team add lonwood "Lonwood"
    team modify lonwood prefix "[Lonwood] "
        team add arborknight "Arborknights"
        team modify arborknight prefix "[Arborknight] "
            team add kestrel "Kestrels"
            team modify kestrel prefix "[Kestrel] "

    # arcanists
        team add arcanist "Arcanists"
        team modify arcanist prefix "[Arcanist] "

    # rasaya
    team add queenshriven "Queenshriven"
    team modify queenshriven prefix "[Queenshriven] "
        team add ardent "Ardents"
        team modify ardent prefix "[Ardent] "

# Allegiance: Neutral (oaths 100-199)
    # students
        team add student_entropy "Student (Entropy)"
        team add student_vital "Student (Vitalism)"
        # team add student_justice "Student (Justice)"
        team add student_artist "Student (Artistry)"
        team add student_stellography "Student (Stellography)"
        team add student_scribe "Student (Script)"
        team modify student_entropy prefix "[Student (Entropy)] "
        team modify student_vital prefix "[Student (Vitalism)] "
        # team modify student_justice prefix "[Student (Justice)] "
        team modify student_artist prefix "[Student (Artistry)] "
        team modify student_artist prefix "[Student (Stellography)] "
        team modify student_scribe prefix "[Student (Script)] "

    # ashengard
        team add ashengard "Ashengard"
        team modify ashengard prefix "[Ashengard] "
            team add revenant "Ashen Revenant"
            team modify revenant prefix "[Ashen Revenant] "

    # entertainers
        team add entertainer "Entertainers"
        team modify entertainer prefix "[Entertainer] "

    # orderkeepers
        team add orderkeeper "Orderkeepers"
        team modify orderkeeper prefix "[Orderkeeper] "

    # cindersworn
    team add firekeeper "Firekeepers"
    team modify firekeeper prefix "[Firekeeper] "
            team add kindled_knight "Kindled Knights"
            team modify kindled_knight prefix "[Kindled Knight] "

    # elkwyn
    team add elkwyn "House of Elkwyn"
    team modify elkwyn prefix "[Elkwyn] "

    # draese
        team add draesir_ferina "Draese Anferina"
        team add draesir_ordonna "Draese Anordonna"
        team add draesir_phaera "Draese Anphaera"
        team modify draesir_ferina prefix "[Draesir Anferina] "
        team modify draesir_ordonna prefix "[Draesir Anordonna] "
        team modify draesir_phaera prefix "[Draesir Anphaera] "

# Allegiance: Runahl / Havoc (oaths 200-299)
    # proscripts
    team add proscript "Proscripts"
    team modify proscript prefix "[Proscript] "

    # havoc allegiant
        team add havoc_allegiant "Disruptors"
        team modify havoc_allegiant prefix "[Disruptor] "

# Other Allegiance
    # nightbrands
        team add nightbrand "Nightbrands"
        team modify nightbrand prefix "[Nightbrand] "

    # other various groups
    team add silverseeker "Silverseekers"
    team add nightjar "Nightjars"
    team add heron "Herons"
    team modify silverseeker prefix "[Silverseeker] "
    team modify nightjar prefix "[Nightjar] "
    team modify heron prefix "[Heron] "