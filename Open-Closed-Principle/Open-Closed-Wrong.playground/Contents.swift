import Foundation

class Dog {
    
    let name: String
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


class Cat {
    
    let name: String
    
    init (name: String) {
        self.name = name
    }
    
    func printInfo() -> String {
        return "\(self.name) -> meow"
    }
    
}

class Logger {
    
    class func printData(dogs:[Dog], cats:[Cat]) {
        for dog in dogs {
            print(dog.printInfo())
        }
        
        for cat in cats {
            print(cat.printInfo())
        }
        
    }
    
}

let cats: [Cat]  = [
Cat(name: "Harry"),
Cat(name: "Fifo")
]

let dogs: [Dog]  = [
Dog(name: "Bia", isAngry: false),
Dog(name: "Dora", isAngry: false)
]

Logger.printData(dogs: dogs, cats: cats)
