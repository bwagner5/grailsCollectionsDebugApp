package location

/**
 * The Class SuperWorld.
 *
 */
class SuperWorld {

    String name

    String description


    static hasMany = [places: Place]

    static constraints = {
        name nullable: false
        description nullable: false
    }

}
