package location

import device.CustomGlobe


class CustomLocation {

    /** The name. */
    String name;

    /** The description. */
    String description

    /** The building. */
    Building building



    static belongsTo = Building


    static hasMany = [
            customGlobes: CustomGlobe,
    ]

    static constraints = {
        name()
        description(nullable: true)
    }
    
}
