import Darwin
//// 10845 큐
//
//let n = Int(readLine()!)!
//var queue : [Int?] = []
//for _ in 1...n {
//	let input = readLine()!
//	if input.starts(with:"push") {
//		queue.append(Int(input.split(separator: " ")[1])!)
//	} else if input == "pop" {
//		if queue.isEmpty {
//			print(-1)
//		} else {
//			print(queue[0]!)
//			queue.removeFirst()
//		}
//	} else if input == "size" {
//		print(queue.count)
//	} else if input == "empty" {
//		if queue.isEmpty {
//			print(1)
//		} else {
//			print(0)
//		}
//	} else if input == "front" {
//		if queue.isEmpty {
//			print(-1)
//		} else {
//			print(queue[0]!)
//		}
//	} else if input == "back" {
//		if queue.isEmpty {
//			print(-1)
//		} else {
//			print(queue[queue.count-1]!)
//		}
//	}
//}


//// 요세푸스 문제 -1, 시간초과
//
//let jos = readLine()!.split(separator: " ").map{Int(String($0))!}
//var queue = Array(1...jos[0])
//var index = jos[1] - 1
//
//var result = [Int]()
//
//while queue.count > 0 {
//	for _ in 0..<index {
//		queue.append(queue.removeFirst())
////		queue.append(queue[0])
////		queue.removeFirst()
//	}
//
//	result.append(queue.removeFirst())
////	result.append(queue[0])
////	queue.removeFirst()
//}
//
//print("<" + result.map{String($0)}.joined(separator: ", ") + ">")


//// 요세푸스 문제 -2
//
//let jos = readLine()!.split(separator: " ").map{Int(String($0))!}
//var queue = Array(1...jos[0])
//var count = jos[1] - 1
//
////var result = [Int]()
//var result = [String]()
//var index = 0
//
//while result.count != jos[0] {
//	for _ in 0..<count {
//		queue.append(queue[index])
//		index += 1
//	}
//
//	result.append(String(queue[index]))
//	index += 1
//}
//
//print("<" + result.joined(separator: ", ") + ">")
