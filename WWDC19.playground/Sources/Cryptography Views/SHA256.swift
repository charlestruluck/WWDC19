import UIKit

class SHA256View: CryptoView {
    
    // Initialize SHA256View
    init(message: String = "Hello!") {
        super.init(message: message)
    }
    
    // After initializing HomeView:
    override func viewDidLoad() {
        
        // Instanciate the digest variable
        let digest = CryptoSupport.SHA256(string: message)
        setup(title: "SHA256", placeholder: "FUN256")
        // Fun note: SHA through ROT13 = FUN. Who could've guessed!
        
        // Setup the labels
        walkthrough(headerText: "Take this text:", headerDynamic: message, bodyTitle: "Run it through SHA256.", bodyDynamic: "IETF RFC 6234's SHA256 function", footerText: "The resulting digest:", footerDynamic: digest)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
