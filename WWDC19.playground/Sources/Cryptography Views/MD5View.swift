import UIKit
import CommonCrypto

class MD5View: UIView {
    
    let stringInput: String
    
    init(message: String) {
        stringInput = message
        super.init(frame: CGRect(x: 0, y: 0, width: 400, height: 600))
        backgroundColor = Color.civic
        viewDidLoad()
    }
    
    // After instantiating HomeView:
    func viewDidLoad() {
        let titleLabel = Utilities.createLabel(text: " ZQ5 ", fontSize: 32, frame: CGRect(x: 0, y: 0, width: 400, height: 80))
        titleLabel.textAlignment = .center
        titleLabel.sizeToFit()
        titleLabel.center.x = self.center.x
        titleLabel.frame.origin.y = 20
        titleLabel.alpha = 0
        self.addSubview(titleLabel)
        
        let inputLabel = Utilities.createLabel(text: "Your Input: \"\(stringInput)\"", fontSize: 26, frame: CGRect(x: 0, y: 0, width: 380, height: 80))
        inputLabel.textAlignment = .center
        inputLabel.sizeToFit()
        inputLabel.center.x = self.center.x
        inputLabel.frame.origin.y = self.center.y - inputLabel.frame.height
        inputLabel.alpha = 0
        self.addSubview(inputLabel)
        
        let digestString = CryptoSupport.MD5(string: stringInput)
        
        let digestLabel = Utilities.createLabel(text: digestString, fontSize: 22, frame: CGRect(x: 0, y: 0, width: 340, height: 80), color: Color.red)
        digestLabel.textAlignment = .center
        digestLabel.sizeToFit()
        digestLabel.center.x = self.center.x
        digestLabel.frame.origin.y = self.center.y + inputLabel.frame.height
        digestLabel.alpha = 0
        self.addSubview(digestLabel)
        
        UIView.animateKeyframes(withDuration: 1.54, delay: 0.0, options: [], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.325, animations: {
                titleLabel.alpha = 1
            })
            
            titleLabel.animate(newText: " MD5 ", characterDelay: 1)
            
            UIView.addKeyframe(withRelativeStartTime: 0.501, relativeDuration: 1, animations: {
                inputLabel.alpha = 1
                digestLabel.alpha = 1
            })
            
        }, completion: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
