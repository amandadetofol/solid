import Foundation

// This class has more than one responsability
class WrogManager {
    
    public func request() -> Data {
        return Data()
    }
    
    public func parseApiDataToModel(with data: Data) {}
    
    public func saveInCoreData(data: [AnyObject]) {}
    
}

//The right way to do it, is to separe the responsabilities:
class RequestManager {
    public func request() -> Data {
        return Data()
    }
}

class ApiParser {
    public func parseApiDataToModel(with data: Data) {}
}

class CoreDataManager {
    public func saveInCoreData(data: [AnyObject]) {}
}

// And when you wanna use a class, create a new reference
class GeneralManager {
    private let requestManager = RequestManager()
    private let apiParser = ApiParser()
}
