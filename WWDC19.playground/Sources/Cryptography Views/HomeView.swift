import UIKit

class HomeView: UIView {
    
    // Initialize
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 400, height: 600))
        backgroundColor = Color.civic
        viewDidLoad()
    }
    
    // After instantiating HomeView:
    func viewDidLoad() {
        
        // Instantiate the opening title.
        let welcomeLabel = Utilities.createLabel(text: "Na Rkcybengvba va Pelcgbtencul", fontSize: 32, frame: CGRect(x: 0, y: 0, width: 400, height: 80))
        welcomeLabel.textAlignment = .center
        welcomeLabel.sizeToFit()
        welcomeLabel.center.x = self.center.x
        welcomeLabel.frame.origin.y = 20
        welcomeLabel.alpha = 0
        self.addSubview(welcomeLabel)
        
        // Add fancy background accent.
        let backgroundLabel = Utilities.createLabel(text: "01010111\n01010111\n01000100\n01000011", fontSize: 40, frame: CGRect(x: 0, y: 0, width: 400, height: 200))
        backgroundLabel.textAlignment = .center
        backgroundLabel.sizeToFit()
        backgroundLabel.center = self.center
        backgroundLabel.alpha = 0
        self.addSubview(backgroundLabel)
        
        // Animation of opening title and background accent
        UIView.animate(withDuration: 0.3, animations: {
            welcomeLabel.alpha = 1
            backgroundLabel.alpha = 0.5
        }) { (true) in
            welcomeLabel.animate(newText: "An Exploration in Cryptography", characterDelay: 0.08)
            backgroundLabel.animateTimes(newText: "01100011\n01110010\n01100001\n01011010", characterDelay: 0.2, times: 1)
        }
    }
    
    // Required fallback.
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
