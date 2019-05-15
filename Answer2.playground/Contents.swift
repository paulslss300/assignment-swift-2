import Foundation

/**
 A function that checks if a string is a palindrome and returns true or false
 
 Overview:
 - 1. Find the reversed version of the input string.
 Check if the input string is the same as the reversed string.
 */

func isPalindrome(_ word: String) -> Bool {
    return word == String(word.reversed())
}

// Tests
let test_string_1 = "qww"
// is not palindrome

let test_string_2 = "asdfdsa"
// is palindrome

print(isPalindrome(test_string_1))
print("----------------")
print(isPalindrome(test_string_2))

