// 1) create var which can be mutated
// 2) create funcion dismount which takes the Int, split it into digits and sum them
// 3) we use dismount function as long as num won't be a single digit

func digitalRoot(of number: Int) -> Int {

var num = number //(1)

// (2)
func dismount(of num: Int) -> Int {
  let numArr = String(num)
  var sum = 0
  for char in numArr{
    if let integer = Int(String(char)) {
    sum += integer
}
}
return sum
}
//(3)
while num / 10 > 0 {
  num = dismount(of: num)
}
return num
}