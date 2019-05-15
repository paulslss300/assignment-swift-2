import Foundation

/**
 A function that accepts an array of integers and a target sum.
 The function will print all pairs of integers in the array whose sum is equal to the target sum.
 
 Overview:
 - 1. Remove duplicates in the array to avoid returining pairs of numbers that are the same
 - 2. Creates a dictionary
 - 3. Loop through the array, for each element, check if a complement (another number that when added to the
 element, will produce the target sum) exists. If yes, print out the complement and the element. Finally Store
 the element and the index into the dictionary, with the element being the key and the index the value.
 */

func findPairs(in array: [Int], withSum sum: Int) {
    // Converts to type Set to acquire only the unique values, then converts back to type Array
    let array = Array(Set(array))
    
    // Initialize dictionary
    var dict = [Int: Int]()
    
    // For every element,
    for (currentIndex, element) in array.enumerated() {
        // Find the complement to n that would sum up to the target.
        let complement = sum - element
        
        // Check if the complement is in the dictionary.
        if dict[complement] != nil {
            print("(\(element), \(complement)) add up to \(sum)")
        }
        
        // Store element and its index into the dictionary.
        dict[element] = currentIndex
    }
}

// Tests
let test_array_1 = [0,2,3,-1]
let test_sum_1 = 2
// (0,2), (-1,3)

let test_array_2 = [1,1,2,2,1]
let test_sum_2 = 3
// (1,2)

let test_array_3 = [0,1,2,3]
let test_sum_3 = 10
// None

findPairs(in: test_array_1, withSum: test_sum_1)
print("----------------")
findPairs(in: test_array_2, withSum: test_sum_2)
print("----------------")
findPairs(in: test_array_3, withSum: test_sum_3)
