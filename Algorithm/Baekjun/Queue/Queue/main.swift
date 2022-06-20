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

