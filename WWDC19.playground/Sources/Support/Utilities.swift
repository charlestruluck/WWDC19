import UIKit

// Two abstractions that makes everything ten times easier.
class Utilities {
    
    // Abstract uniform UILabel
    class func createLabel(text: String, fontSize: CGFloat, frame: CGRect, color: UIColor = Color.green) -> UILabel {
        let label = UILabel()
        
        // Set information.
        label.frame = frame
        label.text = text
        
        // Constrict the contents
        label.clipsToBounds = true
        label.layer.masksToBounds = true
        
        // Aesthetics
        let cfURL = Bundle.main.url(forResource: "SFMono-Heavy", withExtension: "otf")! as CFURL
        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        
        label.font = UIFont(name: "SF Mono", size:  fontSize)
        label.textColor = color
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }
    
}
