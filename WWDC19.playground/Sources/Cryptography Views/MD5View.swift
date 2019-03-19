import UIKit

class MD5View: CryptoView {
    
    init(message: String = "Hello!") {
        super.init(message: message)
    }
    
    // After initializing HomeView:
    override func viewDidLoad() {
        
        let digest = CryptoSupport.MD5(string: message)
        setup(title: " MD5 ", placeholder: " ZQ5 ", digest: digest)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
