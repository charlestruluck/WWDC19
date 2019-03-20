import UIKit

class SubstitutionView: CryptoView {
    
    init(message: String = "") {
        super.init(message: message)
    }
    
    // After initializing HomeView:
    override func viewDidLoad() {
        
        // Set up the title.
        setup(title: "Substitute", placeholder: "Fhofgvghgr")
        walkthrough(headerText: "Take this text:", headerDynamic: "WWDC", bodyTitle: "And shift with key:", bodyDynamic: "W → X\nD → J\nC → M", footerText: "The resulting digest:", footerDynamic: "XXJM")
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
