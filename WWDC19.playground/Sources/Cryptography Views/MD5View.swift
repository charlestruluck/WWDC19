import UIKit
import CommonCrypto

class MD5View: CryptoView {
    
    override init(message: String = "Hello!") {
        super.init(message: message)
    }
    
    // After instantiating HomeView:
    override func viewDidLoad() {
        
        let digest = CryptoSupport.MD5(string: message)
        setup(title: " MD5 ", placeholder: " ZQ5 ", digest: digest)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
