import UIKit

class SHA1View: CryptoView {
    
    init(message: String = "Hello!") {
        super.init(message: message)
    }
    
    // After initializing HomeView:
    override func viewDidLoad() {
        
        let digest = CryptoSupport.SHA1(string: message)
        setup(title: " SHA1 ", placeholder: " FUN1 ", digest: digest)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
