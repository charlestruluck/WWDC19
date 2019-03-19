//: [Previous](@previous)

/*:
 # Caesar Cipher
 The Caesar Cipher is generally referred to as the most rudimentery form of cryptography. It is a substitution cipher, which means it works by substituting letters out with other letters.
 
 ## How does the Caesar Cipher work?
 Caesar Cipher works by rotating all of the characters over a certain amount of times, depending on the key.
 
 ## Demo
 You can try the Caesar Cipher for yourself by modifying the two variables below. Feel free to stick around and try a few different combinations.
 - ```message``` - The text you want to run through the cipher.
 - ```key``` - How many characters you want to rotate the message by.
 */
var message = "Ashley Truluck"
var key = 12
/*:
 ## Substitution Ciphers
 The name comes from the idea of using a "key" to change a message that is not intended for anyone without the key; however, these are still solveable and not secure.
 If you look at the demonstration to the right, it should be clear that ciphers work on the character-level, meaning they affect text at the character level.
 Our string, which starts out as "WWDC", runs through the key we've formulated. We are converting "W" to "X", "D" to "J", and "C" to "M"
 You should be able to see why this is easily reverseable now, but the understanding of a "key" will make it easier to understand how more complex cryptographic methods work.
 
 ## Takeaways
 You should understand that simple ciphers are reverseable and affect each individual character from the input message.
 You should also understand that this cipher works around a "key". If you know the key, you can use it to encode and decode a message.

//: [Next](@next)
*/


TimelineManager(learnAbout: .caesarCipher, message: message, key: key)
