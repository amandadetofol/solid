protocol Bird {
    var altitudeToFly: Double? { get set }
    func setLocation(longitude: Double, latitude: Double)
    func setAltitude(altitude: Double)
}

//A Few Methods from the protocol Bird does not apply to a penguin, as setAltitude, for example.
class Penguin: Bird {
    
    var altitudeToFly: Double?
    
    func setLocation(longitude: Double, latitude: Double) {
        
    }
    
    func setAltitude(altitude: Double) {
        
    }
}
