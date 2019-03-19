import UIKit
import PlaygroundSupport

// I know this is a dirty way of doing things, but cut me a break. It works. It is effective.
open class TimelineManager {
    
    let home: HomeView
    let substitute: SubstitutionView
    let caesarCipher: CaesarCipherView
    let md5: MD5View
    let sha1: SHA1View
    
    public init(learnAbout: Informational, message: String = "", key: Int = 1) {
        
        home = HomeView()
        substitute = SubstitutionView()
        caesarCipher = CaesarCipherView(message: message, withKey: key)
        md5 = MD5View(message: message)
        sha1 = SHA1View(message: message)
        
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
        }
    }
    
}

public enum Informational {
    case home
    case substitute
    case caesarCipher
    case md5
    case sha1
}
