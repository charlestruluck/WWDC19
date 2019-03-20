import UIKit

class XORView: CryptoView {
    
    var doFunction: Method
    
    init(message: String = "XOR Cryptography", withComplexKey: String = "complex", function: Method = .encrypt) {
        doFunction = function
        super.init(message: message, withComplexKey: withComplexKey)
    }
    
    override func viewDidLoad() {
        
        let digest: String = CryptoSupport.xor(message: message, withKey: complexKey, method: doFunction)
        
        setup(title: " XOR ", placeholder: " KBE ")
        walkthrough(headerText: "Take this text:", headerDynamic: message, bodyTitle: "XOR with key:", bodyDynamic: complexKey, footerText: "The resulting digest:", footerDynamic: digest)
        print(digest)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("A fatal error ocurred!")
    }
    
}

