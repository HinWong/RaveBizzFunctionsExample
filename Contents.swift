import Foundation

// MARK: - EXAMPLES


func noInputNoOutput() {
    print("This function has no parameter and no return")
}

/// Function with one parameter that is an Int
/// Parameter is labeled "year" inside the function and labeled "when" outside of the function
func pastOrFuture(when year: Int) {
    if year > 2020 {
        print("\(year) is in the future")
    } else {
        print("\(year) was in the past")
    }
}
pastOrFuture(when: 2021)


/// If there is only one label, then external label will be the same as internal label
func firstHalf(original: [String]) -> [String] {
    let result = array.dropLast(array.count/2)
    return Array(result)
}
let array = ["1", "2", "3", "4", "5", "6", "7"]
print(firstHalf(original: array))


/// Use enumberated to access the index and element
func printIndexAndElement(array: [String]) {
    for (index, element) in array.enumerated() {
        print("Index: \(index) and Element: \(element).")
    }
}
printIndexAndElement(array: ["firstName", "lastName"])


// MARK: - QUESTIONS
/// 1. Write a function that takes an array of numbers and returns an array with each of the numbers multiplied by 2

func multiplyByTwo(array: [Int]) -> [Int] {
    let multipliedArray = array.map({return $0 * 2})
    return multipliedArray
}

let testArray = [1,2,3,4]
multiplyByTwo(array: testArray)

/// 2. Write a function to return the last half of the array

func filterArray(array: [Int]) -> [Int] {
    var filteredArray = [Int]()
    let midpoint = array[(array.count)/2]
    
    for index in array {
        if index > midpoint {
            filteredArray.append(index)
        }
    }
    
    return filteredArray
}
let sampleArray = [1,2,3,4,5,6,7,8,9,10]
filterArray(array: sampleArray)



/// 3. Write a function that can be called with the commented code below and return [5, 6, 7, 8, 9, 10]

func createCustomArray(from: Int, to: Int) -> [Int] {
    let customArray = Array(from ... to)
    return customArray
}

let customArray = createCustomArray(from: 5, to: 10)
let customArray2 = createCustomArray(from: 5, to: 15)

/// 4. Write a function that takes in two array and returns a combined array from adding each element at the same positions together
/// Input [2,3,4] and [7,6,5] will return [9,9,9]

func sumOfTwoArrays(arrayOne: [Int], arrayTwo: [Int]) -> [Int] {
    
    let firstArray = arrayOne
    let secondArray = arrayTwo
    
    let summmedArray = zip(firstArray, secondArray).map(+)
    
    return summmedArray
}

let testArray1 = [2,3,4]
let testArray2 = [7,6,5,0,0,1]

sumOfTwoArrays(arrayOne: testArray1, arrayTwo: testArray2)



/// 5. Create this 2-D array using for loops
/*
    [[1,2,3],
    [4,5,6],
    [7,8,9]]
 */

func create2DArray(array: [Int]) -> [[Int]] {
    var arrayOne = [Int]()
    var arrayTwo = [Int]()
    var arrayThree = [Int]()
    
    for index in array {
        if index <= 3 {
            arrayOne.append(index)
        }
        if index == 4 || index == 5 || index == 6 {
            arrayTwo.append(index)
        }
        if index > 6 {
            arrayThree.append(index)
        }
    }
    
    return [arrayOne, arrayTwo, arrayThree]
}
let testingArray = [1,2,3,4,5,6,7,8,9]
create2DArray(array: testingArray)

let anotherTestArray = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
create2DArray(array: anotherTestArray)

/// 6. Write a function that returns the number of pairs of elements that sums up to 0
/// Input [1,2,3,-1,-2,-4] -> Output 2

func twoSumProblem(array: [Int], sum: Int) -> Int {
    
    let sortedArray = array.sorted()
    var numberOfPairs = 0
    var lowIndex = 0
    var highIndex = sortedArray.count - 1
    
    while lowIndex < highIndex {
        let sumOfItems = sortedArray[lowIndex] + sortedArray[highIndex]
        
        if sumOfItems == sum {
            numberOfPairs += 1
            return numberOfPairs
        } else if sumOfItems < sum {
            lowIndex += 1
        } else if sumOfItems > sum {
            highIndex -= 1
        }
    }
    return numberOfPairs
}

let exampleArray3 = [1,2,3,-1,-2,-4]
twoSumProblem(array: exampleArray3, sum: 0)




