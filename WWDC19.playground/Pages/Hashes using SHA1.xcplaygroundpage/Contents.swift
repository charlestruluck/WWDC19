/*:
 [Previous](@previous)
 
 # SHA1: Hash; more secure than MD5. Still not secure.
 
 ## SHA1, uses.
 SHA1 is similar to MD5 in that it is a hash-based algorithm that outputs a fixed-length digest. It was once widely used, but it's usage has since been denounced by Apple and Microsoft because of it's impending doom. While collisions have been found, they are not _yet_ predictable, but that day is coming soon.
 
 Similarly to MD5 and other hashes, SHA1 is used as a verification system for file signatures and passwords.
 
 ## Demo
 You can try out SHA1 here by changing the message variable.
 - ```message``` - The text you want to run through the cipher.
 */

let message = "SHA1 me!"

/*:
 ## Grasping a Better Understanding
 Here are some of the reasons that SHA1 is more secure than MD5:
 - MD5 uses 64 rounds, where SHA1 uses 80 rounds.
 - MD5 has a 128 bit length, while SHA1 has a 160 bit length.
 
 ## Takeaways
 - SHA1 is more secure than MD5; however, you should not be using either.
 - SHA1 is another form of a hash that is used for file signatures and passwords.
 
 For more information on SHA1, see [RFC 6234, 8.2.1](https://tools.ietf.org/html/rfc6234#section-8.2.1)
 
 [Next](@next)
 */

TimelineManager(learnAbout: .sha1, message: message)
