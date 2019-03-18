import UIKit

// A whole list of abstractions to easily instantiate objects in a uniform fashion
class Utilities {
    
    // Abstract uniform UIButton
    class func createButton(text: String, fontSize: CGFloat, frame: CGRect, color: UIColor = Color.red) -> UIButton {
        let button = UIButton()
        button.frame = frame
        
        // Set information.
        button.setTitle(text, for: .normal)
        button.setTitleColor(color, for: .normal)
        
        // Constrict the contents.
        button.clipsToBounds = true
        button.layer.masksToBounds = true
        
        // Aesthetics. :)
        button.titleLabel?.font = UIFont.systemFont(ofSize: fontSize, weight: .heavy)
        
        return button
    }
    
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
        
        return label
    }
    
    // Abstract UITextField object for instantiation.
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
