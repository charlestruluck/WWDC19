
/*
 
 Here are some notes I thought I would add; after all, this is an educational display of Cryptography.
 
 Best practice naming notes:
    message - The input, in this case a string, is always called the message.
    digest  - The output, a string, is generally called the 'digest' or 'messageDigest'
 
 Data types and sizes; this is important for utilizing the digestData variable:
    md5     - The length of an md5 digest is always equivalent to 128 bits, or 16 bytes.
    sha1    - The length of a sha1 digest is always 160 bits, or 20 bytes.
    sha256  - The length of a sha256 digest is always 256 bits or 32 bytes.
 
*/

import CommonCrypto
import Foundation

class CryptoSupport {
    
    // ROT13. The basic
    class func caesarCipher(string: String, key: Int) -> String {
        
        var charKey = [Character: Character]()
        
        let uppercase = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        let lowercase = Array("abcdefghijklmnopqrstuvwxyz")
        
        for i in 0 ..< 26 {
            charKey[uppercase[i]] = uppercase[(i + key) % 26]
            charKey[lowercase[i]] = lowercase[(i + key) % 26]
        }
        
        return String(string.map { charKey[$0] ?? $0 })
        
    }
    
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
    
    class func SHA256(string: String) -> String {
        
        // Instantiate the input string, as well as the data object.
        let messageData = string.data(using:.utf8)!
        var digestData = Data(count: Int(CC_SHA256_DIGEST_LENGTH))
        
        // Run CommonCrypto process; convert the messageData to a SHA256 digest
        _ = digestData.withUnsafeMutableBytes {digestBytes in
            messageData.withUnsafeBytes {messageBytes in
                CC_SHA256(messageBytes, CC_LONG(messageData.count), digestBytes)
            }
        }
        
        // Convert the digest data object to a string containing hex.
        let sha256Hex =  digestData.map { String(format: "%02hhx", $0) }.joined()
        
        return sha256Hex
    }
    
}
