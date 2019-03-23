var message = ""
var key = ""
/*:
 [Previous](@previous)
 
 # What is a symmetric key algorithm?
 A symmetric key algorithm is generally used for two-way data protection. If you want to send your friend a message that can only be read by you and your friend, you would use a symmetric key algorithm. You and your friend would both need the key, you would use it to encrypt the message, and your friend would use it to decrypt the message.
 
 ## XOR Cipher
 The XOR Cipher uses the XOR bitwise function to encrypt the data to the point where a key is the only way to decrypt it. While brute-forcing is an option, it could take an exponential amount of time in relation to the key length to decrypt the message.
 
 ## Demo
 You can try out the XOR cipher for yourself by modifying the two variables below. Try different messages– XOR digest lengths vary in size depending on the input.
 - ```message``` - The text you want to run through the cipher.
 - ```key``` - A string to encrypt with. Can be letters and numbers.
 */

message = "Hello"
key = "012345"

/*:
 
 [Next](@next)
 */

TimelineManager(learnAbout: .xor, message: message, complexKey: key)
