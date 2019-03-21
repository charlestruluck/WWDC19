/*:
 [Previous](@previous)
 
 # SHA256: A modern and secure hash.
 
 ## What is SHA256?
 SHA256 is another hash; you might be thinking all these hashes are getting boring– but bear with me. SHA256 is a modern, and still secure hash. It is one of your prime options if you are looking into building a website with a login form and user database. Beyond SHA256, you could also use PBKDF2, another widely accepted hash algorithm. SHA256 is 256 bytes (it is not a coincidence), meaning there will always be an output of 64 characters.
 
 ## Demo
 You can try out SHA256 for yourself by modifying the variable below. Try different messages– you will find that they always come out to be 64 characters in size, and one message always has the same hash, while changing one thing creates an entirely different hash.
 - ```message``` - The text you want to run through the cipher.
 */

let message = "Hash Me"

/*:
 ## Grasping a Better Understanding
 
 ## Collisions
 There are no known SHA256 collisions yet. This means it is still safe to use SHA256 in practice.
 
 ## Takeaways
 SHA256 is a modern hash algorithm that is still used in practice today, and still generally considered to be secure.
 - Requires no key; is not reverseable.
 - Still safe to use in practice.
 
 For more information on SHA256, see [RFC 6234, 4.1](https://tools.ietf.org/html/rfc6234#section-4.1)
 
 [Next](@next)
 */

TimelineManager(learnAbout: .sha256, message: message)
