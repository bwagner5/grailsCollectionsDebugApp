
import location.CustomLocation
import grails.validation.Validateable


@Validateable
abstract class AbstractImp extends AbstractBasicDomain {


    CustomLocation impLocation

    static constraints = {
        impLocation(nullable: true)

        importFrom AbstractBasicDomain
    }

}
