// This calculator is magically advanced. Can add, substract, divide, multiply. But it also can sort, filter and map numbers.

struct Calculator {
  
  func reduce(_ nums: [Int], using nextPartialResult: (Int, Int) -> Int, startingAt initialResult: Int) -> Int {
    var total = initialResult
    for number in nums {
      total = nextPartialResult(total, number)
    }
    return total
  }

func filter(_ nums: [Int], using isIncluded: (Int) -> Bool) -> [Int] {
  var filteredNums: [Int] = []
    for number in nums {
      if isIncluded(number) {filteredNums.append(number)}
    }
    return filteredNums
  }

func map(_ nums: [Int], using transform: (Int) -> Int) -> [Int] {
  var mappedNums: [Int] = []
    for num in nums {
      mappedNums.append(transform(num))
      }
    return mappedNums
  }

func sort(_ nums: [Int], using order: (Int, Int) -> Bool) -> [Int] {
  // Bubble Sort
  var numbers = nums
    for i in 1 ..< numbers.count {
      var j = i
      while j > 0 && order(numbers[j], numbers[j - 1]) {
        numbers.swapAt(j - 1, j)
          j -= 1
            }
        }
        return numbers
    }
}



let calculator = Calculator()

let numToReduce = [1,2,3,4,5]
let addition: (Int, Int) -> Int = { $0 + $1 }
let substraction: (Int, Int) -> Int = {$0 - $1}
let multiply: (Int, Int) -> Int = {$0 * $1}

let sum = calculator.reduce(numToReduce, using: addition, startingAt: 0)
    print(sum) 
    // Prints: 15

let subs = calculator.reduce(numToReduce, using: substraction, startingAt: 0)
    print(subs) 
    // Prints: -15

  let mult = calculator.reduce(numToReduce, using: multiply, startingAt: 1)
    print(mult) 
    // Prints: 120

let numToFilter = [1, 0, 2, 0, 3, 0, 4, 0]
let filteredNumbers = calculator.filter(numToFilter, using: { $0 != 0 })
    print(filteredNumbers) 
    // Prints: [1, 2, 3, 4]

let numToMap = [10, 12, 14, 16, 18, 20]
let mappedNumbers = calculator.map(numToMap) { $0 + 10 }
    print(mappedNumbers) 
    // Prints: [20, 22, 24, 26, 28, 30]

let numToSort = [10,9,6,7,8,5,3,4,2,1]
let sortedNumbers = calculator.sort(numToSort, using: <)
    print(sortedNumbers)
    // Prints: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

let sortedNumbers2 = calculator.sort(numToSort, using: >)
    print(sortedNumbers2)
    // Prints: [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]