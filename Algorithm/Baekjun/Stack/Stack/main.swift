//// 10828 - 스택
//
//let caseNum = Int(readLine()!)!
//var stack = [Int]()
//
//for _ in 1...caseNum {
//	let input = readLine()!.split(separator: " ").map{String($0)}
//	if input[0] == "push" {
//		stack.append(Int(input[1])!)
//	} else if input[0] == "pop" {
//		print(stack.popLast() ?? -1)
//	} else if input[0] == "size" {
//		print(stack.count)
//	} else if input[0] == "empty" {
//		stack.isEmpty ? print(1) : print(0)
//	} else if input[0] == "top" {
//		stack.isEmpty ? print(-1) : print(stack[stack.endIndex-1])
//	}
//}

//// 9012 괄호
//
//let caseNum = Int(readLine()!)!
//
//for _ in 1...caseNum {
//	var ps = readLine()!.map{String($0)}
//	var count = 0
//	var check = 0
//	for i in (0..<ps.count).reversed() {
//		if count < 0 {
//			check += 1
//			break
//		}
//		if ps[i] == ")" {
//			ps.removeLast()
//			count += 1
//		} else {
//			ps.removeLast()
//			count -= 1
//		}
//	}
//	if count != 0 || check != 0 {
//		print("NO")
//	} else {
//		print("YES")
//	}
//}


//// 1874 스택 수열 -1 , 메모리 초과..
//
//let n = Int(readLine()!)!
//var compare = [Int]()
//var stack = [Int]()
//var result = [Int]()
//
//for _ in 1...n {
//	compare.append(Int(readLine()!)!)
//}
//
//var index = 0
//var num = 1
//var calArr : [String] = []
//
//while true {
//	if compare.count == 0 {
//		calArr.forEach({print($0)})
//		break
//	}
//	if result.contains(n) && stack[stack.count-1] != compare[0] {
//		print("NO")
//		break
//	}
//
//	if !result.contains(n) {
//
//		if num == compare[0] {
//			calArr.append("+")
//			compare.removeFirst()
//			calArr.append("-")
//			result.append(num)
//		} else {
//			stack.append(num)
//			calArr.append("+")
//		}
//	}
//	if stack.count != 0 && stack[stack.count-1] == compare[0] {
//		stack.removeLast()
//		compare.removeFirst()
//		calArr.append("-")
//		result.append(num)
//	}
//
//	if !result.contains(n) {
//	num += 1
//	}
//
//}


//// 1874 스택 수열 -2, 시간초과
//
//let n = Int(readLine()!)!
//var compare = [Int]()
//var stack = [Int]()
//
//for _ in 1...n {
//	compare.append(Int(readLine()!)!)
//}
//
//var index = 0
//var num = 1
//var calArr : [String] = []
//
//while true {
//	if compare.count == 0 {
//		calArr.forEach({print($0)})
//		break
//	}
//	if !compare.contains(n) && stack[stack.count-1] != compare[0] {
//		print("NO")
//		break
//	}
//
//	if compare.contains(n) {
//
//		if num == compare[0] {
//			calArr.append("+")
//			compare.removeFirst()
//			calArr.append("-")
//		} else {
//			stack.append(num)
//			calArr.append("+")
//		}
//		num += 1
//	}
//
//	if stack.count != 0 && stack[stack.count-1] == compare[0] {
//		stack.removeLast()
//		compare.removeFirst()
//		calArr.append("-")
//	}
//}


// 1874 - 스택 수열 -3

//import Foundation
//
//let n = Int(readLine()!)!
//
//var stack = [Int]()
//var answer = [String]()
//var num = 1
//
//for _ in 1...n {
//	let input = Int(readLine()!)!
//	while num <= input {
//		stack.append(num)
//		answer.append("+")
//		num += 1
//	}
//	if stack.last == input {
//		stack.removeLast()
//		answer.append("-")
//	} else {
//		print("NO")
//		exit(0)
//	}
//}
//answer.forEach{print($0)} -- 140ms
//for i in answer { print(i) } -- 140ms
//print(answer.joined(separator: "\n")) -- 90ms


//// 1406 에디터 -1,  시간초과
//
//var a = readLine()!
//var b = a.map{String($0)}
//var n = Int(readLine()!)!
//var command = [String]()
//var index = b.count
//
//for _ in 1...n {
//	command.append(readLine()!)
//}
//
//for i in command {
//	if i == "L" && index != 0 {
//		index -= 1
//	} else if i == "D" && index != b.count {
//		index += 1
//	} else if i == "B" && index != 0 {
//		b.remove(at: index-1)
//	} else if i.starts(with: "P") {
//		b.insert(String(i.last!), at: index)
//		index += 1
//	}
//}
//print(b.joined(separator: ""))


//// 1406 에디터 -2, 시간 초과 -- string, arr 두가지 모두 시간초과뜸
//
//var left = readLine()!
//var n = Int(readLine()!)!
//var right = ""
//
//for _ in 1...n {
//	var input = readLine()!
//
//	if input == "L" && left != "" {
//		right = String(left.last!) + right
//		left.removeLast()
//	} else if input == "D" && right != "" {
//		left += String(right.first!)
//		right.removeFirst()
//	} else if input == "B" && left != "" {
//		left.removeLast()
//	} else if input.starts(with: "P") {
//		input.removeFirst(2)
//		left += input
//	}
//}
//print(left+right)


//// 1406 에디터
//
//var left = readLine()!
//var n = Int(readLine()!)!
//var right = ""
//
//for _ in 1...n {
//	let input = readLine()!
//
//	if input == "L" && left != "" {
//		right.append(left.popLast()!)
//	} else if input == "D" && right != "" {
//		left.append(right.popLast()!)
//	} else if input == "B" && left != "" {
//		left.removeLast()
//	} else if input.starts(with: "P") {
//		left.append(input.last!)
//	}
//}
