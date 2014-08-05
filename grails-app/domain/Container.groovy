
import device.*
import location.CustomLocation


class Container extends AbstractImp {

    CustomGlobe customGlobe
    CustomLocation customLocation
	
	
    static belongsTo = Node

    static hasMany = [nodes: Node]
    static mapping = {
        nodes joinTable: [name: "NODE_CONTAINERS", key: "CONTAINER_ID"]
    }

    static constraints = {
        customGlobe(nullable: true)
        nodes(nullable: false)
        importFrom AbstractImp
    }


}
