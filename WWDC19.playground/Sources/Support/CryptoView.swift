import UIKit

class CryptoView: UIView {
    
    let message: String
    var key: Int
    
    init(message: String = "", key: Int = 1) {
        
        self.message = message
        self.key = key
        
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
            let messageLabel = Utilities.createLabel(text: "Your Input: \"\(message)\"", fontSize: 26, frame: CGRect(x: 0, y: 120, width: 380, height: 80))
            messageLabel.sizeToFit()
            messageLabel.center.x = self.center.x
            messageLabel.alpha = 0
            self.addSubview(messageLabel)
            
            if digest != "" {
                let digestLabel = Utilities.createLabel(text: digest, fontSize: 22, frame: CGRect(x: 0, y: 160, width: 340, height: 80), color: Color.red)
                digestLabel.textAlignment = .center
                digestLabel.sizeToFit()
                digestLabel.center.x = self.center.x
                digestLabel.alpha = 0
                self.addSubview(digestLabel)
                
                UIView.animate(withDuration: 0.3, animations: {
                    messageLabel.alpha = 1
                    digestLabel.alpha = 1
                })
            }
        }
        
    }
    
    // I wish I had time to make this code more efficient.
    func walkthrough(headerText: String, headerDynamic: String, bodyTitle: String, bodyDynamic: String, footerText: String, footerDynamic: String) {
        
        // Instantiate all of the labels.
        let subTitleOne = Utilities.createLabel(text: headerText, fontSize: 26, frame: CGRect(x: 0, y: 120, width: self.frame.width, height: 30), color: Color.green)
        let textOne = Utilities.createLabel(text: headerDynamic, fontSize: 36, frame: CGRect(x: 0, y: 150, width: self.frame.width, height: 50), color: Color.red)
        let subTitleTwo = Utilities.createLabel(text: bodyTitle, fontSize: 26, frame: CGRect(x: 0, y: 220, width: self.frame.width, height: 30), color: Color.green)
        let guidelines = Utilities.createLabel(text: bodyDynamic, fontSize: 36, frame: CGRect(x: 0, y: 250, width: self.frame.width, height: 130), color: Color.red)
        let subTitleThree = Utilities.createLabel(text: footerText, fontSize: 26, frame: CGRect(x: 0, y: 405, width: self.frame.width, height: 30), color: Color.green)
        let textTwo = Utilities.createLabel(text: footerDynamic, fontSize: 36, frame: CGRect(x: 0, y: 440, width: self.frame.width, height: 50), color: Color.red)
        
        // Nasty. (set bounds)
        subTitleOne.sizeToFit()
        textOne.sizeToFit()
        subTitleTwo.sizeToFit()
        guidelines.sizeToFit()
        subTitleThree.sizeToFit()
        textTwo.sizeToFit()
        
        // It's almost like... (move to center of self, which is this view)
        subTitleOne.center.x = self.center.x
        textOne.center.x = self.center.x
        subTitleTwo.center.x = self.center.x
        guidelines.center.x = self.center.x
        subTitleThree.center.x = self.center.x
        textTwo.center.x = self.center.x
        
        // I would not be surprised if... (set alpha to 0 as preperation for animation)
        subTitleOne.alpha = 0
        textOne.alpha = 0
        subTitleTwo.alpha = 0
        guidelines.alpha = 0
        subTitleThree.alpha = 0
        textTwo.alpha = 0
        
        // Seriously, I wouldn't be surprised if I discovered a new BUFFER OVERFLOW as a result of this garbage running... I wish. That's a lot of money, if I remember correctly. Most I've ever done is contact product-security to report a XSS vulnerability. Even then, I went to the wrong department about it. Haha.
        // Sorry for rambling, I'm tired.
        self.addSubview(subTitleOne)
        self.addSubview(textOne)
        self.addSubview(subTitleTwo)
        self.addSubview(guidelines)
        self.addSubview(subTitleThree)
        self.addSubview(textTwo)
        
        // Animate it to look nicer.
        UIView.animateKeyframes(withDuration: 2.8, delay: 0.3, options: [.calculationModeCubicPaced], animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.2, animations: {
                subTitleOne.alpha = 1
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.16, relativeDuration: 0.4, animations: {
                textOne.alpha = 1
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.33, relativeDuration: 0.6, animations: {
                subTitleTwo.alpha = 1
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.50, relativeDuration: 0.8, animations: {
                guidelines.alpha = 1
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.67, relativeDuration: 1.0, animations: {
                subTitleThree.alpha = 1
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.83, relativeDuration: 1.0, animations: {
                textTwo.alpha = 1
            })
            
        }, completion: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

