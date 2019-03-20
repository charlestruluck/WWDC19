var function: Method = .encrypt
var message = ""
var key = ""
/*:
 [Previous](@previous)
 
 # What is a Hash?
 
 ## MD5: An example hash.
 
 ## Demo
 You can try out MD5 for yourself by modifying the two variables below. Try different messages– you will find that they always come out to be 32 characters in size, and one message always has the same hash, while changing one thing creates an entirely different hash.
 - ```message``` - The text you want to run through the cipher.
 - ```key``` - How many characters you want to rotate the message by.
 */

message = "XT^_["
key = "012345"
function = .encrypt

/*:
 ## Grasping a Better Understanding
 
 ## Collisions: Why is MD5 Vulnerable?
 
 ## Takeaways
 
 [Next](@next)
 */

TimelineManager(learnAbout: .xor, message: message, complexKey: key, type: function)
