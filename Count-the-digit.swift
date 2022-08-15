func nbDig(_ n: Int, _ d: Int) -> Int {
  var count = 0
  let c = String(d)
  for k in 0 ... n {
    let k2 = k*k
    if String(k2).contains(c) {
      for letter in String(k2){
        if String(letter) == c {count += 1}
     
      }
    }
  }
  return count
}