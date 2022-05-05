import UIKit

class Handler {
    let fn = FilesystemManager()
    func handle(string: String) {
        fn.save(string: string )
    }
}

class FilesystemManager {
    
    func save(string: String){
        // do the process do save a string in a file
    }
    
}
