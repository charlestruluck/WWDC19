import UIKit

class CaesarCipherView: CryptoView {
    
    override init(message: String = "Hello!") {
        super.init(message: message)
    }
    
    // After instantiating HomeView:
    override func viewDidLoad() {
        
        let digest = CryptoSupport.rot13(string: message)
        setup(title: " Caesar Cipher ", placeholder: " Pnrfne Pvcure ", digest: digest)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
