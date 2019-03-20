import UIKit

class MD5View: CryptoView {
    
    init(message: String = "Hello!") {
        super.init(message: message)
    }
    
    // After initializing HomeView:
    override func viewDidLoad() {
        
        // Add this later: https://www.ietf.org/rfc/rfc1321.txt
        
        let digest = CryptoSupport.MD5(string: message)
        setup(title: " MD5 ", placeholder: " ZQ5 ")
        
        walkthrough(headerText: "Take this text:", headerDynamic: message, bodyTitle: "Run it through MD5.", bodyDynamic: "IETF RFC 1321's standardized MD5 function", footerText: "The resulting digest:", footerDynamic: digest)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
