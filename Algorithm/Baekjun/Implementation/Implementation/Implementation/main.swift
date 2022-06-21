import CoreFoundation
//// 10093 숫자
//
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//let n1 = input.min()!, n2 = input.max()!
//
//if n1 == n2 {
//	print(0)
//} else {
//	print(n2-n1-1)
//
//	for i in n1+1..<n2 {
//		print(i, terminator: " ")
//	}
//	print("")
//}

//// 1371 가장 많은 글자
//import Foundation
//var input = String()
//
//while let a = readLine()?.replacingOccurrences(of: " ", with: "") {
//	input += a
//}
//
//var dict = [Character:Int]()
//
//for ch in input {
//	dict[ch] = dict[ch] == nil ? 1 : dict[ch]! + 1
//}
//
//let maxValue = dict.values.max()
//let aToZ = "abcdefghijklmnopqrstuvwxyz".map{$0}
//
//for ch in aToZ {
//	if dict[ch] == maxValue {
//		print(ch, terminator: "")
//	}
//}


// 11970 AB

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let k = input[1]

var result = ""
for i in 1..<n {
	if k == 0 {
		result += "B"
		result += Array(repeating: "A", count: n-1)
		break
	}
	if i * (n-i) == k {
		result += Array(repeating: "A", count: i)
		result += Array(repeating: "B", count: n-i)
		break
	} else if i * (n-1-i) == k {
		result += "B"
		result += Array(repeating: "A", count: i)
		result += Array(repeating: "B", count: n-1-i)
		break
	}
}
if result.count == 0 {
	print(-1)
} else {
	print(result)
}





//if max.max() >= k {
//	print()
//} else {
//	print(-1)
//}
