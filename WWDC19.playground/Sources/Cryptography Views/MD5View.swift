import UIKit

class MD5View: CryptoView {
    
    // Initialize MD5View
    init(message: String = "Hello!") {
        super.init(message: message)
    }
    
    // After initializing MD5View:
    override func viewDidLoad() {
        
        // set the digest
        let digest = CryptoSupport.MD5(string: message)
        setup(title: "MD5", placeholder: "ZQ5")
        
        // Set the labels
        walkthrough(headerText: "Take this text:", headerDynamic: message, bodyTitle: "Run it through MD5.", bodyDynamic: "IETF RFC 1321's MD5 function", footerText: "The resulting digest:", footerDynamic: digest)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
