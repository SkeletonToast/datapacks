# create new pets and just copy over their data from the player's data
    # each pet will have two things stored: their entity type,
    # and just all their other general nbt data
# whoa maybe you could just run one function referencing that storage location!! use the entity type to spawn and the nbt data to modify
    # storage format will be:
        # homesteader:528 familiars.pet.1.type
        # homesteader:528 familiars.pet.1.nbt
    # run the function as function <function> with <storage>