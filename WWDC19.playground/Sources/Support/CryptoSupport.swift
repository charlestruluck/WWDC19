import CommonCrypto
import Foundation

class CryptoSupport {
    
    // Use CommonCrypto to digest the input string into an MD5 data structure, then into a string since we are not _really_ doing anything with this data.
    class func MD5(string: String) -> String {
        
        // Instantiate the input string, as well as the data object.
        let messageData = string.data(using:.utf8)!
        var digestData = Data(count: Int(CC_MD5_DIGEST_LENGTH))
        
        // Run CommonCrypto process; convert the messageData to a MD5 digest
        _ = digestData.withUnsafeMutableBytes {digestBytes in
            messageData.withUnsafeBytes {messageBytes in
                CC_MD5(messageBytes, CC_LONG(messageData.count), digestBytes)
            }
        }
        
        // Convert the digest data object to a string containing hex.
        let md5Hex =  digestData.map { String(format: "%02hhx", $0) }.joined()
        
        return md5Hex
    }
    
    // Use CommonCrypto to digest the input string into a SHA1 data structure, then into a string.
    class func SHA1(string: String) -> String {
        
        // Instantiate the input string, as well as the data object.
        let messageData = string.data(using:.utf8)!
        var digestData = Data(count: Int(CC_SHA1_DIGEST_LENGTH))
        
        // Run CommonCrypto process; convert the messageData to a SHA1 digest
        _ = digestData.withUnsafeMutableBytes {digestBytes in
            messageData.withUnsafeBytes {messageBytes in
                CC_SHA1(messageBytes, CC_LONG(messageData.count), digestBytes)
            }
        }
        
        // Convert the digest data object to a string containing hex.
        let sha1Hex =  digestData.map { String(format: "%02hhx", $0) }.joined()
        
        return sha1Hex
    }
    
}
