/*:
 [Table of Contents](@first) | [Previous](@previous) | [Next](@next)
 - - -
 * callout(Exercise): You have a secret message to send. Write a playground that can encrypt strings with an alphabetical [caesar cipher](https://en.wikipedia.org/wiki/Caesar_cipher). This cipher can ignore numbers, symbols, and whitespace.
 
 **Example Output:**
 - Decrypted: Nearly all men can stand adversity, but if you want to test a man's character, give him power
 - Encrypted: arneyl nyy zra pna fgnaq nqirefvgl, ohg vs lbh jnag gb grfg n zna'f punenpgre, tvir uvz cbjre
 
 **Constraints:**
 - The encrypted and decrypted text is case sensitive
 - Add a shift variable to indicate how many places to shift
 */

import Foundation

let plainText = "Nearly all men can stand adversity, but if you want to test a man's character, give him power."

var shiftAmount = 13 //Int.max - 25

var cipherKey = [Character: Character]()

let lowercaseCharacters = Array("abcdefghijklmnopqrstuvwxyz".characters)
let uppercaseCharacters = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ".characters)

for index in 0 ..< 26 {
    cipherKey[lowercaseCharacters[index]] = lowercaseCharacters[(index + shiftAmount) % 26]
    cipherKey[uppercaseCharacters[index]] = uppercaseCharacters[(index + shiftAmount) % 26]
}

let cipherText = String(plainText.characters.map { cipherKey[$0] ?? $0 })

print("Plain Text: \(plainText)")
print("Encrypted: \(cipherText)")


//This section prints out all permutations to facilitate key selection

for shiftAmount in 1 ..< 26 {
    for index in 0 ..< 26 {
        cipherKey[lowercaseCharacters[index]] = lowercaseCharacters[(index + shiftAmount) % 26]
        cipherKey[uppercaseCharacters[index]] = uppercaseCharacters[(index + shiftAmount) % 26]
    }
    var decryptedText = String(cipherText.characters.map { cipherKey[$0] ?? $0 })
    print("Decrypted with a shift of \(shiftAmount): \(decryptedText)\r\n")
}
/*:
 - - -
 [Table of Contents](@first) | [Previous](@previous) | [Next](@next)
 */
