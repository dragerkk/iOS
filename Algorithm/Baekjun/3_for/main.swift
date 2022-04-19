// // 2739 구구단
// var a = Int(readLine()!)!
// for count in 1...9 {
// 	print("\(a) * \(count) =", a*count)
// }

// // 10950 A+B -3
// var a = Int(readLine()!)!
// for _ in 1...a {
// 	let b = readLine()!.split(separator:" ")
// 	let c = b.map{Int($0)!}
// 	print(c[0]+c[1])
// }

// // 8393 합
// var num = Int(readLine()!)!
// var sum = 0
// for count in 1...num {
// 	sum += count
// }
// print(sum)

// // 2741 N찍기
// let num = Int(readLine()!)!
// for i in 1...num {
//     print(i)
// }

// // 2741 기찍N
// let num = Int(readLine()!)!
// for i in (1...num).reversed() {
//     print(i)
// }

// // 11021 A+B -7
// let caseNum = Int(readLine()!)!
// for i in 1...caseNum {
// 	let num = readLine()!.split(separator : " ")
// 	let input = num.map{Int($0)!}
// 	let result = input[0] + input[1]
// 	print("Case #\(i): \(result)")
// }

// // 11022 A+B -8
// let caseNum = Int(readLine()!)!
// for i in 1...caseNum {
// 	let input = readLine()!.split(separator: " ")
// 	let num = input.map{Int($0)!}
// 	print("Case #\(i): \(num[0]) + \(num[1]) = \(num[0]+num[1])")
// }

// // 2438 별찍기 -1
// let caseNum = Int(readLine()!)!
// var a:[String]=[]
// for _ in 1...caseNum {
//     a.append("*")
//     let result = a.joined(separator: "")
//     print(result)
// }

// // 2439 별찍기 -2
// let caseNum = Int(readLine()!)!
// var addStar:[String] = []
// for i in 1...caseNum {

// 	var addSpace:[String] = []
// 	var desNum = caseNum
// 	while desNum > i {
// 	addSpace.append(" ")
// 	desNum -= 1
// 	}
// 	addStar.append("*")
// 	let result = addSpace.joined(separator: "") + addStar.joined(separator: "")
// 	print(result)
// }

// 10871 X보다 작은 수
let input = readLine()!.split(separator: " ").map{Int($0)!}
let num = readLine()!.split(separator: " ").map{Int($0)!}
var result:[Int] = []
for i in 0...input[0]-1 {
	if num[i] < input[1] {
		result.append(num[i])
	}
}
print(result.map{String($0)}.joined(separator: " "))