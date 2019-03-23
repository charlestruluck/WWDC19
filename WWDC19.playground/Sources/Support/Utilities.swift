import UIKit

// Two abstractions that makes everything ten times easier.
class Utilities {
    
    // Abstract uniform UILabel
    class func createLabel(text: String, fontSize: CGFloat, frame: CGRect, color: UIColor = Color.green, weight: UIFont.Weight = UIFont.Weight.regular) -> UILabel {
        let label = UILabel()
        
        // Aesthetics
        let cfURL = Bundle.main.url(forResource: "SFMono-Heavy", withExtension: "otf")! as CFURL
        let ccfURL = Bundle.main.url(forResource: "SFMono-Regular", withExtension: "otf")! as CFURL
        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        CTFontManagerRegisterFontsForURL(ccfURL, CTFontManagerScope.process, nil)
        
        if weight == .heavy {
            label.font = UIFont(name: "SFMono-Heavy", size:  fontSize)
        } else {
            label.font = UIFont(name: "SFMono-Regular", size:  fontSize)
        }
        
        // Set information.
        label.frame = frame
        label.text = text
        
        // Constrict the contents
        label.clipsToBounds = true
        label.layer.masksToBounds = true
        
        label.textColor = color
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }
    
    class func createTextField(placeholder: String, frame: CGRect) -> UITextField {
        
        // Create objects for the field
        let textField = UITextField()
        let textFieldUnderlinePath = UIBezierPath()
        let textFieldUnderline = CAShapeLayer()
        
        // Theme-ing
        textField.frame = frame
        textField.clearsOnBeginEditing = true
        textField.borderStyle = .none
        textField.backgroundColor = .clear
        textField.textColor = .white
        textField.inputView = UIView()
        
        // Set placeholder theme
        textField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: Color.green.withAlphaComponent(0.5), NSAttributedString.Key.font: UIFont(name: "SF Mono", size: 32)])
        
        // Standardization and annoyance filters
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        
        // Add a line under the field (it looks cool :) )
        textFieldUnderlinePath.move(to: CGPoint(x: textField.frame.origin.x, y: textField.frame.origin.y + textField.frame.height))
        textFieldUnderlinePath.addLine(to: CGPoint(x: textField.frame.origin.x + textField.frame.width, y: textField.frame.origin.y + textField.frame.height))
        textFieldUnderline.path = textFieldUnderlinePath.cgPath
        textFieldUnderline.strokeColor = Color.green.cgColor
        textFieldUnderline.lineWidth = 2
        textFieldUnderline.lineJoin = CAShapeLayerLineJoin.round
        
        // Add the line
        textField.layer.addSublayer(textFieldUnderline)
        
        return textField
    }
    
}
