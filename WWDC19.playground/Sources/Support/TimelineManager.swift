import UIKit
import PlaygroundSupport

// I know this is a dirty way of doing things, but cut me a break. It works. It is effective.
open class TimelineManager {
    
    let container = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 600))
    let home = HomeView()
    let caesarCipher = CaesarCipherView()
    let md5: MD5View
    let sha1: SHA1View
    
    public init(learnAbout: Informational, input: String = "") {
        md5 = MD5View(message: input)
        sha1 = SHA1View(message: input)
        PlaygroundPage.current.liveView = container
        switch learnAbout {
        case .home:
            container.addSubview(home)
        case .caesarCipher:
            container.addSubview(caesarCipher)
        case .md5:
            container.addSubview(md5)
        case .sha1:
            container.addSubview(sha1)
        }
    }
    
}

public enum Informational {
    case home
    case caesarCipher
    case md5
    case sha1
}
