protocol BankProcess {
    func extratct() -> String
}

protocol ATMProcess {
    func withDraw(value: Double)
    func cashDeposit(value: Double)
}

class ATM: BankProcess, ATMProcess {
    func extratct() -> String {
        return "30.00"
    }
    
    func withDraw(value: Double) {
        //withDrawn
    }
    
    func cashDeposit(value: Double) {
        //cashDeposit
    }
    
    
}

class OnlineBanking: BankProcess {
    func extratct() -> String {
        return "30.00"
    }
}
