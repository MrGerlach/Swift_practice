func fortune(_ f0: Int, _ p: Double, _ c0: Int, _ n: Int, _ i: Double) -> Bool {
    var currentYear: Double = Double(f0)
    var lastYear: Double = 0
    var inflation = Double(c0)
  for _ in 1..<n {
    lastYear = currentYear
    currentYear = trunc(lastYear + p / 100 * lastYear - Double(inflation))
    inflation = trunc(inflation + inflation * i / 100)
  }
  
  return currentYear >= 0.0 ? true : false
  
}