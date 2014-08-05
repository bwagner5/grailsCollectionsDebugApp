package location


class Building {

    String name;

    String description

    Place place

    static belongsTo = Place

    static hasMany = [
            locations: CustomLocation]

    static constraints = {
    }

}
