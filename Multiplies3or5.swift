func solution(_ num: Int) -> Int {
  var sum = 0
  
  // if the number is negative and lower than 3, return 0
  if num < 3 {return 0}
  // returns the sum of all the multiples of 3 or 5 below the number passed in
for i in 3 ..< num {
  // first, check if the number is divisible by 3 
  if i % 3 == 0 {sum += i}
  //check, check if the number is divisible by 5 AND not by 3. Reason? 
  //If the number is a multiple of both 3 and 5, only count it once. 
  //For instance 15 will be first divided by 3, so we should avoid counting it twice.
  else if i % 5 == 0 && i % 3 != 0 {sum += i}
}
  return sum
}