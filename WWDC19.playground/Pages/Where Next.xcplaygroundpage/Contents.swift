/*:
 [Previous](@previous)
 
 # Why Cryptography?
 
 ## The Privacy Debate
 *It's the debate of the century: governments want the keys to your data, and lawmakers are trying to make that happen.*\
 Understanding cryptography helps you better understand why it is so dangerous to give politicians, or anyone, a backdoor into your data. Let's look at a demonstration together:
 1. Lawmakers pass a bill that forces bank companies to provide a backdoor into your bank account.
 2. All of your bank information used to be secured behind a SHA256 algorithm, where your password was the key to that data. Theoretically, no one should know your password.
 3. Banks around the country can't just create a secondary password; that would make every bank account vulnerable to a hacker obtaining the secondary password.
 4. Banks should not store your password in plain text. No service should store a password in plain text. If a databreach occurred, instead of having a grace-period of password-cracking time to change your password, every account would immediately by compromised.
 
 The example above is simplified to represent a phone. The same principles apply.
 
 ## Development
 From the website-password demonstration, you understand the importance of cryptography in a developer's standpoint.\
 If you develop apps, games, websites, or anything that interacts with a user directly or indirectly, you could be making the world a more secure place by utilizing cryptography; you could also be making the world a less secure place by developing technologies that lack proper standards.
 
 ## Public-Key Algorithms
 One of the topics I intentionally did not dive into in this playground is public-key encryption. I did not want to overload the viewer with information that would be more complex than they could understand, but I feel like public-key encryption deserves a note here, because it's arguably more important than any other method.\
 In short, public-key encryption works by having two different keys: a public key and a private key. One key is used for encryption, and an entirely different key is used for decryption. 
 
 ## Further Reading
 To learn more about the topic of encryption, cryptanalysis, cryptocurrencies, and computer security, a great starting place is simply [LearnCryptography](https://learncryptography.com/)\
 Gary C. Kessler has published a very good document on many different aspects of Cryptography. There are also very well-made figures and graphics to help understand how keys work. [An Overview of Cryptography](https://www.garykessler.net/library/crypto.html)
 
 */

TimelineManager(learnAbout: .closure)
