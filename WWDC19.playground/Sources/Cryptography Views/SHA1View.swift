import UIKit
import CommonCrypto

class SHA1View: CryptoView {
    
    override init(message: String = "Hello!") {
        super.init(message: message)
    }
    
    // After instantiating HomeView:
    override func viewDidLoad() {
        
        let digest = CryptoSupport.SHA1(string: message)
        setup(title: " SHA1 ", placeholder: " FUN1 ", digest: digest)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
