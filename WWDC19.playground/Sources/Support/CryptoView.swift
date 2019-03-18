import UIKit

class CryptoView: UIView {
    
    let message: String
    
    init(message: String = "") {
        
        self.message = message
        
        // Satisfy UIView initializers
        super.init(frame: CGRect(x: 0, y: 0, width: 400, height: 600))
        backgroundColor = Color.civic
        
        // Run the standard viewDidLoad, user can override.
        viewDidLoad()
    }
    
    /*
     Create a function for post-initialization
     This is a required function.
     */
    func viewDidLoad() {
        preconditionFailure("viewDidLoad() must be overridden")
    }
    
    func setup(title: String = "", placeholder: String = "", digest: String = "") {
        
        if title != "" {
            // Use the handy-dandy label creator and format it.
            let titleLabel = Utilities.createLabel(text: placeholder, fontSize: 32, frame: CGRect(x: 0, y: 0, width: 400, height: 80))
            
            // Do the formats
            titleLabel.textAlignment = .center
            titleLabel.sizeToFit()
            titleLabel.center.x = self.center.x
            titleLabel.frame.origin.y = 20
            titleLabel.alpha = 0
            
            // Add it to outselves.
            self.addSubview(titleLabel)
            
            // Create the title animation for load.
            UIView.animate(withDuration: 0.3, animations: {
                titleLabel.alpha = 1
            }) { (true) in
                titleLabel.animate(newText: title, characterDelay: 0.1)
            }
        }
        
        if message != "" {
            let messageLabel = Utilities.createLabel(text: "Your Input: \"\(message)\"", fontSize: 26, frame: CGRect(x: 0, y: 0, width: 380, height: 80))
            messageLabel.textAlignment = .center
            messageLabel.sizeToFit()
            messageLabel.center.x = self.center.x
            messageLabel.frame.origin.y = self.center.y - messageLabel.frame.height
            messageLabel.alpha = 0
            self.addSubview(messageLabel)
            
            if digest != "" {
                let digestLabel = Utilities.createLabel(text: digest, fontSize: 22, frame: CGRect(x: 0, y: 0, width: 340, height: 80), color: Color.red)
                digestLabel.textAlignment = .center
                digestLabel.sizeToFit()
                digestLabel.center.x = self.center.x
                digestLabel.frame.origin.y = self.center.y + messageLabel.frame.height
                digestLabel.alpha = 0
                self.addSubview(digestLabel)
                
                UIView.animate(withDuration: 0.3, animations: {
                    messageLabel.alpha = 1
                    digestLabel.alpha = 1
                })
            }
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

