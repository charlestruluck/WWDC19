import UIKit

class SHA1View: CryptoView {
    
    init(message: String = "Hello!") {
        super.init(message: message)
    }
    
    // After initializing HomeView:
    override func viewDidLoad() {
        
        let digest = CryptoSupport.SHA1(string: message)
        setup(title: " SHA1 ", placeholder: " FUN1 ")
        // Fun note: SHA1 through ROT13 = FUN1. Who could've guessed!
        
        // Add this later: https://tools.ietf.org/html/rfc6234#section-8.2.1
        
        walkthrough(headerText: "Take this text:", headerDynamic: message, bodyTitle: "Run it through SHA1. ", bodyDynamic: "IETF RFC 1321's standardized MD5 function", footerText: "The resulting digest:", footerDynamic: digest)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
