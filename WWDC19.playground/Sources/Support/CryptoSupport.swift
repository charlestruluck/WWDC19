
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
        var fineKey = key
        
        // Character map for reference
        let uppercase = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        let lowercase = Array("abcdefghijklmnopqrstuvwxyz")
        
        if key < 0 {
            fineKey = ((key % 26) + 26)
        }
        
        // For each rotation
        for i in 0 ..< 26 {
            
            // Rotate using map depending on upper or lower.
            charKey[uppercase[i]] = uppercase[(i + fineKey) % 26]
            charKey[lowercase[i]] = lowercase[(i + fineKey) % 26]
            
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
    
    class func xor(message: String, withKey: String, method: Method) -> String {
        
        let key = withKey.map { $0 } //Can be any chars, and any length array
        let length = key.count
        var output = ""
        
        for i in message.enumerated() {
            let byte = [i.element.utf8() ^ key[i.offset % length].utf8()]
            output.append(String(bytes: byte, encoding: .utf8)!)
            //output.append(String(bytes: byte, encoding: .utf8)!)
        }
        
        return output.map { String($0) }.joined()
        
        
        //let key = withKey.utf8
//        var messageData = [UInt8]()
//        var digestData = [UInt8]()
        
        //print(method)
//        if method == Method.decrypt {
//            let messageDataStringArray = message.enumerated().map { $0 > 0 && $0 % 2 == 0 ? [$1] : [$1]}
//            print("run")
//            print("l:", messageDataStringArray[0])
//            
//            //let messageDataString = messageDataStringArray.
//            messageData = UInt8(message, radix: 16) {
//                print(value)
//                digestData.append(newElement: messageData.enumerated().map({
//                    $0.element ^ key[key.index(key.startIndex, offsetBy: $0.offset % key.count)]
//                }))
//            }
//        }
        
//        let bytes = message.utf8.enumerated().map({(arg0) -> UInt8 in
//            if let idx = key.index(key.startIndex, offsetBy: arg0.offset, limitedBy: key.endIndex) {
//                return arg0.element ^ key[idx]
//            }
//            return arg0.element // or whatever
        
        //let bytes = message.utf8.map({
           // $1 ^ key[key.startIndex.advancedBy($0 % key.count)]
      //  })
        //return "helo"/*bytes.map { String($0) }.joined()*/
    }
    
//    class func desEncrypt(message: String, withKey: String) -> String {
//
//        let key = withKey.data(using: .utf8)
//        let data = message.data(using: .utf8)
//
//        var numBytesEncrypted: size_t = 0
//        var result = Data(count: data!.count)
//
//        print(data!)
//        print(data!.count)
//
//        _ = result.withUnsafeMutableBytes { resultBytes in
//            data!.withUnsafeBytes { dataBytes in
//                key!.withUnsafeBytes { keyBytes in
//                    CCCrypt(CCOperation(kCCEncrypt), CCAlgorithm(kCCAlgorithmDES), CCOptions(/*kCCOptionPKCS7Padding|kCCOptionECBMode*/), keyBytes, kCCKeySizeDES, nil, dataBytes, data!.count, resultBytes, data!.count, &numBytesEncrypted)
//                }
//            }
//        }
//
//        print(String(bytes: result, encoding: .utf8))
//
//        return String(data: result, encoding: .utf8) ?? "Sorry, error."
//
//    }
    
//    let encrypted = "inMyOriginalCodeYouWouldSeeADESEncryptedStringHere/ahw=="
//    if let key = "12345678".data(using: .utf8), let data = Data(base64Encoded: encrypted) {
//        var numBytesDecrypted: size_t = 0
//        var result = Data(count: data.count)
//
//        let err = result.withUnsafeMutableBytes {resultBytes in
//            data.withUnsafeBytes {dataBytes in
//                key.withUnsafeBytes {keyBytes in
//                    CCCrypt(CCOperation(kCCDecrypt), CCAlgorithm(kCCAlgorithmDES), CCOptions(kCCOptionECBMode), keyBytes, kCCKeySizeDES, nil, dataBytes, data.count, resultBytes, data.count, &numBytesDecrypted)
//                }
//            }
//        }
//
//        if err != CCCryptorStatus(kCCSuccess) {
//            NSLog("Decryption failed! Error: \(err.description)")
//        }
//
//        return String(data: result, encoding: .utf8) ?? "???"
//    }
    
}
