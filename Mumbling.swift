func accum(_ s: String) -> String {
  var result = [String]()
  for (num, letter) in s.enumerated() {
    var second = ""
    for _ in 0..<num {
    second += String(letter).lowercased()
   }  
    result.append(letter.uppercased() + second)
  }
  return result.joined(separator: "-")
  }