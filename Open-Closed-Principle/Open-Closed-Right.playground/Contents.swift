import Foundation

protocol Animal {
    var name: String { get set }
    func printInfo() -> String
}

class Dog: Animal {
    var name: String
    let isAngry: Bool
    
    init (name: String, isAngry: Bool) {
        self.name = name
        self.isAngry = isAngry
    }
    
    func printInfo() -> String {
        let angry = self.isAngry ? "Brave" : "Calm"
        return "\(self.name) -> \(angry)"
    }
    
}


class Cat: Animal {
    
    var name: String
    
    init (name: String) {
        self.name = name
    }
    
    func printInfo() -> String {
        return "\(self.name) -> meow"
    }
    
}

class Logger {
    
    class func printData(animals: [Animal]) {
        for animal in animals {
            print(animal.printInfo())
        }
        
    }
    
}

let animals: [Animal] = [
    Cat(name: "Harry"),
    Cat(name: "Fifo"),
    Dog(name: "Bia", isAngry: false),
    Dog(name: "Dora", isAngry: false)
]
Logger.printData(animals: animals)
