func rank(_ st: String, _ we: [Int], _ n: Int) -> String {
//function used to find letter postition in alphabet
func findLetter(_ searchValue: String, in array: [String]) -> Int {
  var result = 0
    for (index, char) in array.enumerated() {
      if char == searchValue {
        result = index
      }
    }
    return result
  }

  //variables 
  let alphabet: [String] = ["0", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
  let names = st.split(separator: ",")
  var soms = [Int]()
  
  //conditions 
   if st.isEmpty { return "No participants"}
   if n > names.count { return "Not enough participants"}
   if we.count < names.count {return "Error"}
  
  // function's engine:
  for name in names {
    var nameScore = [Int]()
      for letter in name {
        nameScore.append(findLetter(letter.uppercased(), in: alphabet))
      }
    soms.append(name.count + nameScore.reduce(0, +))
  }
  
  let winningNumber = zip(we, soms).map { $0 * $1 }
  
var finalResult: [String: Int] = [:]
for i in 0..<winningNumber.count {
  finalResult.updateValue(winningNumber[i], forKey: String(names[i]))
}
  let sortedResult = finalResult.sorted(by: { $0.value == $1.value ? $0.key < $1.key : $0.value > $1.value} )

  return sortedResult[n-1].key
}