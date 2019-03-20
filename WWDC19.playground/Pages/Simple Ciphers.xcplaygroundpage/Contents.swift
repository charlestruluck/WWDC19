/*:
 [Previous](@previous)

 # Ciphers
 The first topic we will be going over revolves around ciphertext. Everything in cryptography uses ciphers; though, modern solutions use more complex ciphers than we will be going over.
 
 ## What are ciphers?
 For this demonstration, we're going to be using "simple ciphers" to explain the basis. On the right side of your Xcode screen, you should see an abstraction of how basic substitution ciphers work.
 
 ## Substitution Ciphers
 The name comes from the idea of using a "key" to change a message that is not intended for anyone without the key; however, these are still solveable and not secure.
 If you look at the demonstration to the right, it should be clear that ciphers work on the character-level, meaning they affect text at the character level.
 Our string, which starts out as "WWDC", runs through the key we've formulated. We are converting "W" to "X", "D" to "J", and "C" to "M"
 You should be able to see why this is easily reverseable now, but the understanding of a "key" will make it easier to understand how more complex cryptographic methods work.
 
 ## Terminology
 There are some important terms to understand:
 - message - In cryptography, the 'message' is the text that you are encrypting.
 - key - The key is what you (theoretically) need to decrypt the message and see the plain text. Insecure ciphers/algorithms often do not require a key to crack.
 - digest - Likewise, in cryptography the encrypted output is called the 'digest'.
 
 ## Takeaways
 You should understand that simple ciphers are reverseable and affect each individual character from the input message.
 You should also understand that this cipher works around a "key". If you know the key, you can use it to encode and decode a message.

 [Next](@next)
 */
TimelineManager(learnAbout: .substitute)
