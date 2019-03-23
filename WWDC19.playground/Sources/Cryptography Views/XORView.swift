import UIKit

class XORView: CryptoView {
    
    // Initialize XORView
    init(message: String = "XOR Cryptography", withComplexKey: String = "complex") {
        super.init(message: message, withComplexKey: withComplexKey)
    }
    
    // When the view is done initializing:
    override func viewDidLoad() {
        
        // Set the digest using the XOR function in CryptoSupport
        let digest: String = CryptoSupport.xor(message: message, withKey: complexKey)
        
        // Setup the labels and animations
        setup(title: "XOR", placeholder: "KBE")
        walkthrough(headerText: "Take this text:", headerDynamic: message, bodyTitle: "XOR with key:", bodyDynamic: complexKey, footerText: "The resulting digest:", footerDynamic: digest)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("A fatal error ocurred!")
    }
    
}

