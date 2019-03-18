import UIKit

extension UILabel {
    
    // This function simply filters though and replaces each letter in the label, each letter changing at the interval specified.
    func animate(newText: String, characterDelay: TimeInterval) {
        
        DispatchQueue.main.async {
            
            // For every chatacter in the new string ...
            for (index, character) in newText.enumerated() {
                
                // ... wait (characterDelay) seconds ...
                DispatchQueue.main.asyncAfter(deadline: .now() + characterDelay * Double(index)) {
                    
                    // ... then insert the new character before the old character ...
                    self.text?.insert(character, at: self.text!.index(self.text!.startIndex, offsetBy: index))
                    
                    // ... and remove the old character, so it is not displayed.
                    self.text?.remove(at: self.text!.index(self.text!.startIndex, offsetBy: index+1))
                    
                }
                
            }
        }
        
    }
    
    /*
     I'm not joking when I say this took me 5 hours.
     It shold not have taken me this long.
     The logic (and math) behind this was a really fun exploration into Dispatch Queue.
     
     Anyways, this function simply filters though and replaces each letter in the label, each letter changing at the interval specified. Just like above, but it reverses/repeats.
     */
    func animateTimes(newText: String, characterDelay: TimeInterval, times: Int) {
        let oldText = self.text!
        
        DispatchQueue.main.async {
            
            // For every redition specified ...
            for run in 0...times {
                
                // ... and for every chatacter in the new string ...
                for (index, character) in newText.enumerated() {
                    
                    // ... wait (characterDelay) seconds ...
                    DispatchQueue.main.asyncAfter(deadline: .now() + (characterDelay * Double((index + (self.text!.count * (run * 2)))))) {
                        
                        // ... then insert the new character before the old character ...
                        self.text?.insert(character, at: self.text!.index(self.text!.startIndex, offsetBy: index))
                        
                        // ... and remove the old character, so it is not displayed.
                        self.text?.remove(at: self.text!.index(self.text!.startIndex, offsetBy: index + 1))
                    }
                }
                
                // Things get tricky here. Basically the same as the top ...
                for (index, character) in oldText.enumerated() {
                    
                    // ... but add the number of characters from the pervious run times the number of runs.
                    DispatchQueue.main.asyncAfter(deadline: .now() + (characterDelay * Double((index + (self.text!.count * ((run * 2) + 1)))))) {
                        self.text?.insert(character, at: self.text!.index(self.text!.startIndex, offsetBy: index))
                        self.text?.remove(at: self.text!.index(self.text!.startIndex, offsetBy: index + 1))
                    }
                }
            }
        }
    }
    
}
