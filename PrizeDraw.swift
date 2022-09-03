func rank(_ st: String, _ we: [Int], _ n: Int) -> String {
var string = String()

func findLetter(_ searchValue: String, in array: [String]) -> Int {
  var result = 0
    for (index, char) in array.enumerated() {
      if char == searchValue {
        result = index
      }
    }
    return result
  }

  let alphabet: [String] = ["0", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
  let names = st.split(separator: ",")
  var soms = [Int]()
  
  
  for name in names {
    var nameScore = [Int]()
    for letter in name {
      nameScore.append(findLetter(letter.uppercased(), in: alphabet))
    }
    soms.append(name.count + nameScore.reduce(0, +))
  }
  
  let winningNumber = zip(we, soms).map { $0 * $1 }
  
var finalResult: [Int: String] = [:]
for i in 0..<winningNumber.count {
  finalResult.updateValue(String(names[i]), forKey: winningNumber[i] )
}
  
  return finalResult[n]! // *fix it!* musi zwracać nie punkty, ale imię w 4 linijce w kolejności
}


