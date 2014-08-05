package device

import location.CustomLocation


abstract class AbstractDevice extends AbstractBasicDomain {

    /** The location. */
    CustomLocation location

    /** The constraints. */
    static constraints = {
        importFrom AbstractBasicDomain
        location(nullable: true)
    }

    @Override
    public String toString() {
        return name;
    }
}
