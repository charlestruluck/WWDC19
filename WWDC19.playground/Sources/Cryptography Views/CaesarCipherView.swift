import UIKit

class CaesarCipherView: CryptoView {
    
    // Initialize CaesarCipherView
    init(message: String = "Caesar", withKey: Int = 1) {
        super.init(message: message, withKey: withKey)
    }
    
    // After initializing:
    override func viewDidLoad() {
        
        // Instanciate the digest, set up the title and the walkthough graphic.
        let digest = CryptoSupport.caesarCipher(string: message, key: key)
        
        // set up labels
        setup(title: "Caesar Cipher", placeholder: "Pnrfne Pvcure")
        walkthrough(headerText: "Take this text:", headerDynamic: message, bodyTitle: "Move all by \(key):", bodyDynamic: "A + \(key) → \(CryptoSupport.caesarCipher(string: "A", key: key))", footerText: "The resulting digest:", footerDynamic: digest)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
