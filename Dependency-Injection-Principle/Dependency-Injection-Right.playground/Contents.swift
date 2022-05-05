import Foundation

protocol FileManagerProtocol {
    func saveData(data: String)
}

class Handler {
    
    let fm: FileManagerProtocol
    
    init (fm: FileManagerProtocol) {
        self.fm = fm
    }
    
    func handle(string: String) {
        fm.saveData(data: string)
    }
    
}

class  FileSystemManager: FileManagerProtocol {
    
    func saveData(data: String) {
        
    }
    
}

let fileSystemManager = FileSystemManager()
let handler = Handler(fm: fileSystemManager)
handler.handle(string: "Primeira linha do arquivo!")
