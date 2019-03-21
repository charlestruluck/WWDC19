/*:
 [Previous](@previous)
 
 # What is a Hash?
 
 ## MD5: An example hash.
 MD5, at one point, was widely accepted as a secure hash for passwords. Many databases used (and still use) it. It offers a irreversable hash digest to the inputed message, so for many, it is enough. (Don't get the wrong message: do NOT use MD5 for your websites; see ```Collisions``` section for more information on security. There are better alternatives like SHA256, we will get there in a minute.)
 
 ## Hashes: Grasping a better understanding.
When you create a password on a website, usually your password gets stored in a database, so let's go through that process.
 1. First, you type your raw password, let's say, ```Thisisabadassw0rd!```. The password is sent to the server running the website where it is hashed. The password is hashed on the server to prevent raw-passwords from being used.
 1-1. ***Note: Since hashes are not reversable, the owner of the server cannot get your password, nor can a hacker who accesses the database, unless he brute-forces the hash by trying every possible password against it.***
 2. Now, your HASHED password is stored in the database, along with your username. Let's log in!
 3. In the website's login form, we type in our username and our password. But oh no! We typed our password wrong: ```G00dpassw0rd!```
 4. The username and password you tried to login with gets sent to the server, and the database searches for your username. It then compares the hashed password you inputted with the hashed password stored with your username; low and behold, they have entirely different hashes.
 5. The website alerts your that you inputted password was wrong, so let's type in our correct password: ```Thisisabadpassw0rd!```
 6. Again, this gets sent to the website's database, and the hash you inputted gets compared to the hash stored under your account username. It's a success– the hashes are the same!
 7. The server responds to your request with a success packet, stating that you've successfully typed your password, and you can get access.
 
 Wow, that was a long read. Let's have some fun now– play with the interactive MD5 demonstration!
 
 ## Demo
 You can try out MD5 for yourself by modifying the two variables below. Try different messages– you will find that they always come out to be 32 characters in size, and one message always has the same hash, while changing one thing creates an entirely different hash.
 - ```message``` - The text you want to run through the cipher.
 */

 let message = "Thisisabadpassw0rd!"

/*:
 
 ## Collisions: Why is MD5 Vulnerable?
 MD5 has predictable collisions. For a moment, stop thinking about using an MD5 hash with a password. Many people use MD5 to make sure the file they downloaded is legitimate.
 
 You can run MD5 on that file since MD5 hashes are unique, right? Incorrect. It is possible to manipulate the contents of a file to have the same hash as another, different file.
 
 Here is the scenario:
    Bob downloads a file from his co-worker, Jerry, that he got emailed. His co-worker says the file has a specific MD5 hash, and he says to make sure to check that the MD5 hash is correct.
    Little does Bob OR Jerry know, a red-team hacker has performed a Man In The Middle attack on the email and was able to replace the good file with the bad file!
    Our smart hacker has gotten hold of the original file's MD5 and used predictable collisions to form a vulnerable version of the same file that infects the computer which the file is run on.
 
 That is a 'collision' in cryptography. A lot, I know.
 
 ## Takeaways
 The main things to understand:
 
 Hash:
 - A hash-based or one-way encryption is an algorithm that takes in a ```message```, or an input of some kind, and outputs a ```digest``` or hash.
 - Hashes are fixed-length. No matter how long the input is, the output is always a defined number of bytes. This is what enables collisions.
 
 Passwords:
 - Passwords are generally (and should *always*) be stored as a hash ***BUT NOT MD5***.
 - A website compares your inputted hash with the one stored in the database when you created your account.
 
 Security:
 - A collision in cryptography is an algorithm, for instance MD5, that has two different input messages with the same hash.
 - Collisions destroy the integrity of a file signature.
 
 For more information on MD5, see [RFC 1321](https://www.ietf.org/rfc/rfc1321.txt)
 
 [Next](@next)
 */

TimelineManager(learnAbout: .md5, message: message)
