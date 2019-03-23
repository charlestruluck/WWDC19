import UIKit

class SHA1View: CryptoView {
    
    init(message: String = "Hello!") {
        super.init(message: message)
    }
    
    // After initializing HomeView:
    override func viewDidLoad() {
        
        let digest = CryptoSupport.SHA1(string: message)
        setup(title: "SHA1", placeholder: "FUN1")
        // Fun note: SHA1 through ROT13 = FUN1. Who could've guessed!
        
        walkthrough(headerText: "Take this text:", headerDynamic: message, bodyTitle: "Run it through SHA1. ", bodyDynamic: "IETF RFC 6234's MD5 function", footerText: "The resulting digest:", footerDynamic: digest)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
