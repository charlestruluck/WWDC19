import UIKit

class CaesarCipherView: UIView {
    
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 400, height: 600))
        backgroundColor = Color.civic
        viewDidLoad()
    }
    
    // After instantiating HomeView:
    func viewDidLoad() {
        let titleLabel = Utilities.createLabel(text: "Pnrfne Pvcure", fontSize: 32, frame: CGRect(x: 0, y: 0, width: 400, height: 80))
        titleLabel.textAlignment = .center
        titleLabel.sizeToFit()
        titleLabel.center.x = self.center.x
        titleLabel.frame.origin.y = 20
        titleLabel.alpha = 0
        self.addSubview(titleLabel)
        
        let input = Utilities.createTextField(placeholder: "Rotate me!", frame: CGRect(x: 0, y: 0, width: 300, height: 60))
        input.center = self.center
        input.alpha = 0
        self.addSubview(input)
        
        UIView.animateKeyframes(withDuration: 1.54, delay: 0.0, options: [], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.325, animations: {
                titleLabel.alpha = 1
            })
            
            titleLabel.animate(newText: "Caesar Cipher", characterDelay: 0.08)
            
            UIView.addKeyframe(withRelativeStartTime: 0.501, relativeDuration: 1, animations: {
                input.alpha = 1
            })
            
        }, completion: nil)
        
//        UIView.animate(withDuration: 0.5, animations: {
//            titleLabel.alpha = 1
//            input.alpha = 1
//        }) { (true) in
//            titleLabel.animate(newText: "Caesar Cipher", characterDelay: 0.08)
//        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
