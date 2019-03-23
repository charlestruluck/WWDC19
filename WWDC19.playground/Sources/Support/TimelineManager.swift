import UIKit
import PlaygroundSupport

// I know this is a dirty way of doing things, but cut me a break. It works. It is effective.
open class TimelineManager {
    
    // Define placeholders
    let home: HomeView
    let substitute: SubstitutionView
    let caesarCipher: CaesarCipherView
    let md5: MD5View
    let sha1: SHA1View
    let sha256: SHA256View
    let xor: XORView
    let closure: ClosureView
    
    // Initializer. Pass information to the currently visible view.
    public init(learnAbout: Informational, message: String = "", key: Int = 1, complexKey: String = "complex") {
        
        home = HomeView()
        substitute = SubstitutionView()
        caesarCipher = CaesarCipherView(message: message, withKey: key)
        md5 = MD5View(message: message)
        sha1 = SHA1View(message: message)
        sha256 = SHA256View(message: message)
        xor = XORView(message: message, withComplexKey: complexKey)
        closure = ClosureView()
        
        // Set the live view to the chosen view.
        switch learnAbout {
        case .home:
            PlaygroundPage.current.liveView = home
        case .substitute:
            PlaygroundPage.current.liveView = substitute
        case .caesarCipher:
            PlaygroundPage.current.liveView = caesarCipher
        case .md5:
            PlaygroundPage.current.liveView = md5
        case .sha1:
            PlaygroundPage.current.liveView = sha1
        case .sha256:
            PlaygroundPage.current.liveView = sha256
        case .xor:
            PlaygroundPage.current.liveView = xor
        case .closure:
            PlaygroundPage.current.liveView = closure
        }
        
    }
    
}

// Enum for which view is being shown. I decided to do it this way because it's more user-friendly.
public enum Informational {
    case home
    case substitute
    case caesarCipher
    case md5
    case sha1
    case sha256
    case xor
    case closure
}
