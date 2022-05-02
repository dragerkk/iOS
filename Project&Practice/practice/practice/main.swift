import Foundation
// 연산자 우선순위

let expression = "100-200*300-500+20" // answer:60420


let x = 12
var num = x
var sum = 0

while num >= 10 {
	sum += num % 10
	num /= 10
}
if x % sum == 0 {
	print(true)
} else {
	print(false)
}
