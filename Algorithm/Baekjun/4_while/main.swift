// // 10952 A+B -5
// var escape : Bool = true
// while escape != false {
// 	var input = readLine()!.split(separator: " ").map{Int($0)!}
// 	if input != [0, 0] {
// 		print(input[0]+input[1])
// 		escape = true
// 	} else {
// 		escape = false
// 	}
// }

// // 10951 A+B -4
// while let input=readLine() {
// 	var num = input.split(separator: " ").map{Int($0)!}
// 	print(num[0]+num[1])
// }

// 1110 더하기 사이클
let input = Int(readLine()!)!
var a = input / 10
var b = input % 10
var i = 0
while true {
	let sum = a + b 
	let result = b * 10 + sum % 10

	a = result / 10
	b = sum % 10
	i += 1

	if result == input {
		break
	} 
}
print(i)
