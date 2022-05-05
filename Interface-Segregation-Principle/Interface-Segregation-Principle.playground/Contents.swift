import Foundation

protocol BankProcess {
    func withDraw(value: Double)
    func cashDeposit(value: Double)
    func extract() -> String
}

class ATM: BankProcess {
    
    func withDraw(value: Double) {
        
    }
    
    func cashDeposit(value: Double) {
        
    }
    
    func extract() -> String {
        return "R$ 30.00"
    }
    
}

class OnlineBanking: BankProcess {
    
    func withDraw(value: Double) {
        // you can not do it in the PC
    }
    
    func cashDeposit(value: Double) {
        // you can not do it in the PC
    }
    
    func extract() -> String {
        return "R$ 30.00"
    }
}
