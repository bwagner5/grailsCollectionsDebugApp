package location

class Place {

    String name
    SuperWorld world

    static hasMany = [buildings: Building]

    static constraints = {
    }
    static mapping = {
        world lazy: false
    }

}
