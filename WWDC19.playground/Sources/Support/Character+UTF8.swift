import Foundation

extension Character {
    func utf8() -> UInt8 {
        let utf8 = String(self).utf8
        return utf8[utf8.startIndex]
    }
}
