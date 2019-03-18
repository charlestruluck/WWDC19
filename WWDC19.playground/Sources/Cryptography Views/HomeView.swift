import UIKit

class HomeView: CryptoView {
    
    // After initializing HomeView:
    override func viewDidLoad() {
        
        // Set up the title
        self.setup(title: "An Exploration in Cryptography", placeholder: "Na Rkcybengvba va Pelcgbtencul")
        
        // Add fancy background accent.
        let backgroundLabel = Utilities.createLabel(text: "01010111\n01010111\n01000100\n01000011", fontSize: 40, frame: CGRect(x: 0, y: 0, width: 400, height: 200))
        backgroundLabel.textAlignment = .center
        backgroundLabel.sizeToFit()
        backgroundLabel.center = self.center
        backgroundLabel.alpha = 0
        self.addSubview(backgroundLabel)

        // Animation of opening title and background accent
        UIView.animate(withDuration: 0.3, animations: {
            backgroundLabel.alpha = 0.3
        }) { (true) in
            backgroundLabel.animateTimes(newText: "01100011\n01110010\n01100001\n01011010", characterDelay: 0.1, times: 1)
        }
    }

    
    // After instantiating HomeView:
//    override func viewDidLoad() {
//
//        // Add fancy background accent.
//        let backgroundLabel = Utilities.createLabel(text: "01010111\n01010111\n01000100\n01000011", fontSize: 40, frame: CGRect(x: 0, y: 0, width: 400, height: 200))
//        backgroundLabel.textAlignment = .center
//        backgroundLabel.sizeToFit()
//        backgroundLabel.center = self.center
//        backgroundLabel.alpha = 0
//        self.addSubview(backgroundLabel)
//
//        // Animation of opening title and background accent
//        UIView.animate(withDuration: 0.3, animations: {
//            backgroundLabel.alpha = 0.5
//        }) { (true) in
//            self.setup(title: "An Exploration in Cryptography", placeholder: "Na Rkcybengvba va Pelcgbtencul")
//        }
//
//    }
    
    // Required fallback.
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
}
