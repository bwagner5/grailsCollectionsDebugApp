package device



class Node extends AbstractDevice {


    static belongsTo = CustomGlobe

    static hasMany = [customGlobes: CustomGlobe, containers: Container, adjacentNodes: Node]


    static constraints = {
        adjacentNodes nullable: true
        importFrom AbstractDevice
        containers(nullable: true)
    }

}
