// // 4673 셀프 넘버
// func generate (_ inputNum:Int) -> Int {
// 	var sum = inputNum
// 	var num = inputNum
// 	while num != 0 {
// 		sum += num % 10
// 		num /= 10
// 	}
// 	return sum
// }
// var result: Set<Int> = []
// for i in 1...10000 {
// 	result.insert(generate(i))
// }
// for i in 1...10000 {
// 	if !result.contains(i) {
// 		print(i)
// 	}
// }

// 1065 한수
let inputNum = Int(readLine()!)!
func generate (_ num:Int) -> Int {
	let n1 : Int = num / 100
	let n2 : Int = num / 10 - (n1 * 10)
	let n3 : Int = num % 10
	if n1 - n2 == n2 - n3 {
		return 1
	} else {
		return 0
	}
}
var count:Int = 0
for i in 1...inputNum {
	if i < 100 {
		count += 1
	} else {
		count += generate(i)
	}
}
print(count)