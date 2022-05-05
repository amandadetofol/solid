import Foundation

protocol Bird {
    func setLocation(longitude: Double, latitude: Double)
}

protocol Flying {
    var altitudeToFly: Double? { get }
    func setAltitude(altitude: Double)
}

protocol FlyingBird: Bird, Flying {}

class Penguin: Bird {
    func setLocation(longitude: Double, latitude: Double) {}
}

class Owl: FlyingBird {
    var altitudeToFly: Double?
    func setLocation(longitude: Double, latitude: Double) {}
    func setAltitude(altitude: Double) {}
}
