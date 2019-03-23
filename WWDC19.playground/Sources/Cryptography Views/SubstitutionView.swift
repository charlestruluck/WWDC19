import UIKit

class SubstitutionView: CryptoView {
    
    // Initialize SubstitutionView
    init(message: String = "") {
        super.init(message: message)
    }
    
    // After initializing HomeView:
    override func viewDidLoad() {
        
        // Set up the title.
        setup(title: "Substitution", placeholder: "Fhofgvghgvba")
        walkthrough(headerText: "Take this text:", headerDynamic: "WWDC", bodyTitle: "And shift with key:", bodyDynamic: "W → X\nD → J\nC → M", footerText: "The resulting digest:", footerDynamic: "XXJM", longGuideline: true)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
