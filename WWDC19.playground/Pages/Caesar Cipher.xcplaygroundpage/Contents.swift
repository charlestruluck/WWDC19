//: [Previous](@previous)

/*:
 # Caesar Cipher
 The Caesar Cipher is generally referred to as the most rudimentery form of cryptography. It is a substitution cipher, which means it works by substituting letters out with other letters based on a key.
 
 
 ## How does the Caesar Cipher work?
 Caesar Cipher works by rotating all of the characters over a certain amount of times, depending on the key. The english alphabet has 26 characters, so let's imagine A = 1, B = 2, C = 3, etc.
 
 If we rotate the message ```A B C``` by 1, we need to imagine every character is the corresponding number. We'll do this math on these:
 
 ```(1 2 3) + (key: 1) = 2 3 4```,
 
 numerically 2 = B, 3 = C, 4 = D. That makes our encrypted string: ```B C D``` To decrypt it, you would have to move each position by the opposite you have just encrypted it:
 
 Go back and imagine each character as the corresponding number:
 
 ``` (2 3 4) + (key: -1) = 1 2 3```
 
 
 ## Demo
 You can try the Caesar Cipher for yourself by modifying the two variables below. Feel free to stick around and try a few different combinations.
 - ```message``` - The text you want to run through the cipher.
 - ```key``` - How many characters you want to rotate the message by.
 */

let message = "Hello"
let key = 5

// Try encrypting "Hello" with a key of 5.
// Then decrypt the digest with a key of -5.
/*:
 ## Takeaways
 With many encryption techniques, you need to use a key.
 - The key is not always an integer, but in this example, it was.
 - The message gets altered by the key

[Next](@next)
*/


TimelineManager(learnAbout: .caesarCipher, message: message, key: key)
