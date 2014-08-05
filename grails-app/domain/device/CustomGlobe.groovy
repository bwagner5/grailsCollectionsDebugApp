package device

import location.CustomLocation


class CustomGlobe extends AbstractDevice {


    static belongsTo = CustomLocation

    static hasMany = [
            customLocations: CustomLocation,
            nodes: Node]

    static constraints = {
        importFrom AbstractDevice
    }

}
