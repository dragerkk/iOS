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


