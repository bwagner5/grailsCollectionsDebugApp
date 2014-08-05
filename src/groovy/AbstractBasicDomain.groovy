

/**
 * The Class AbstractBasicDomain.
 *
 */
abstract class AbstractBasicDomain {


    /** The name. */
    String name

    /** The description. */
    String description


    /** The constraints. */
    static constraints = {
        name()
        description(nullable: true, maxSize: 1000)

    }



    def clearAssociations(childInstance) {
        domainClass.getPersistentProperties().each { property ->
            if (property.manyToMany && !property.isOwningSide()) {
                childInstance.getProperty(property.name).each {
                    it.getProperty(property.getOtherSide().name).remove(childInstance)
                    it.save()
                }
            }
        }
        return childInstance
    }

}
