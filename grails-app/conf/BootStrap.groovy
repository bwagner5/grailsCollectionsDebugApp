import location.*
import device.*

class BootStrap {

    def init = { servletContext ->

        SuperWorld world = new SuperWorld(name: "w1", description: "w1").save()
        Place place = new Place(name: "p1", world: world).save()
        Building building = new Building(name: "building1", description: "building1", place: place).save()
        place.buildings = [building]
        place.save()
        world.places = [place]
        world.save()
        CustomLocation fa1 = new CustomLocation(
                name: "FA1",
                description: "FA1",
                building: building
              ).save()

        CustomGlobe customGlobe = new CustomGlobe(
        	name: "CGL1",
        	description: "CGL1",
        	customLocations: [fa1]
        ).save()
        fa1.customGlobes = [customGlobe]
        fa1.save()
        Node node = new Node(
        	name: "N1",
        	description: "N1",
        	customGlobes: [customGlobe]
        ).save()
        customGlobe.nodes = [node]
        customGlobe.save()
    	
    }
    def destroy = {
    }
}
