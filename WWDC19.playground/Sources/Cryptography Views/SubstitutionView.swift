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
        
//        // I really hate doing this. If I had more time to spend coding, I would instead use attributed strings; though, I don't think it would be much better then either.
//        let subTitleOne = Utilities.createLabel(text: "Take this text:", fontSize: 26, frame: CGRect(x: 0, y: 120, width: self.frame.width, height: 30), color: Color.green)
//        let textOne = Utilities.createLabel(text: "WWDC", fontSize: 36, frame: CGRect(x: 0, y: 150, width: self.frame.width, height: 50), color: Color.red)
//        let subTitleTwo = Utilities.createLabel(text: "And shift with key:", fontSize: 26, frame: CGRect(x: 0, y: 220, width: self.frame.width, height: 30), color: Color.green)
//        let guidelines = Utilities.createLabel(text: "W → X\nD → J\nC → M", fontSize: 36, frame: CGRect(x: 0, y: 250, width: self.frame.width, height: 130), color: Color.red)
//        let subTitleThree = Utilities.createLabel(text: "The resulting digest:", fontSize: 26, frame: CGRect(x: 0, y: 405, width: self.frame.width, height: 30), color: Color.green)
//        let textTwo = Utilities.createLabel(text: "XXJM", fontSize: 36, frame: CGRect(x: 0, y: 440, width: self.frame.width, height: 50), color: Color.red)
//
//        // Nasty. (set bounds)
//        subTitleOne.sizeToFit()
//        textOne.sizeToFit()
//        subTitleTwo.sizeToFit()
//        guidelines.sizeToFit()
//        subTitleThree.sizeToFit()
//        textTwo.sizeToFit()
//
//        // It's almost like... (move to center of self, which is this view)
//        subTitleOne.center.x = self.center.x
//        textOne.center.x = self.center.x
//        subTitleTwo.center.x = self.center.x
//        guidelines.center.x = self.center.x
//        subTitleThree.center.x = self.center.x
//        textTwo.center.x = self.center.x
//
//        // I would not be surprised if... (set alpha to 0 as preperation for animation)
//        subTitleOne.alpha = 0
//        textOne.alpha = 0
//        subTitleTwo.alpha = 0
//        guidelines.alpha = 0
//        subTitleThree.alpha = 0
//        textTwo.alpha = 0
//
//        // Seriously, I wouldn't be surprised if I discovered a new BUFFER OVERFLOW as a result of this garbage running... I wish. That's a lot of money, if I remember correctly. Most I've ever done is contact product-security to report a XSS vulnerability. Even then, I went to the wrong department about it. Haha.
//        // Sorry for rambling, I'm tired.
//        self.addSubview(subTitleOne)
//        self.addSubview(textOne)
//        self.addSubview(subTitleTwo)
//        self.addSubview(guidelines)
//        self.addSubview(subTitleThree)
//        self.addSubview(textTwo)
//
//        UIView.animateKeyframes(withDuration: 1.0, delay: 0.3, options: [.calculationModeCubicPaced], animations: {
//
//            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.2, animations: {
//                subTitleOne.alpha = 1
//            })
//
//            UIView.addKeyframe(withRelativeStartTime: 0.16, relativeDuration: 0.4, animations: {
//                textOne.alpha = 1
//            })
//
//            UIView.addKeyframe(withRelativeStartTime: 0.33, relativeDuration: 0.6, animations: {
//                subTitleTwo.alpha = 1
//            })
//
//            UIView.addKeyframe(withRelativeStartTime: 0.50, relativeDuration: 0.8, animations: {
//                guidelines.alpha = 1
//            })
//
//            UIView.addKeyframe(withRelativeStartTime: 0.67, relativeDuration: 1.0, animations: {
//                subTitleThree.alpha = 1
//            })
//
//            UIView.addKeyframe(withRelativeStartTime: 0.83, relativeDuration: 1.0, animations: {
//                textTwo.alpha = 1
//            })
//
//        }, completion: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
