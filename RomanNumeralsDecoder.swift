import Foundation

func solution(_ string:String) -> Int {
  let arr = Array(string.reversed())
  var output = 0
  var lastNumber = 0
  let numerals: [String: Int] = [
    "M" : 1000,
    "D" : 500,
    "C" : 100,
    "L" : 50,
    "X" : 10,
    "V" : 5,
    "I" : 1
  ]
  for char in arr {
    var check = numerals[String(char)]
        if check! >= lastNumber {
        output += check!
        } else{
          output -= check!
        }
         lastNumber = check!
  }
    return output
}