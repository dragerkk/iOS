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


//// 1158 요세푸스 문제 -1, 시간초과
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


//// 1158 요세푸스 문제 -2
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


//// 1158 요세푸스 문제 -3 (with LinkedList) - 시간초과
//
//class Node<T> {
//	var data: T?
//	var next: Node?
//
//	init(data: T?, next: Node? = nil) {
//		self.data = data
//		self.next = next
//	}
//}
//
//class LinkedList<T> {
//	var head: Node<T>?
//
//	init(head: Node<T>?) {
//		self.head = head
//	}
//
//	func append(data: T?) {
//		if head == nil {
//			head = Node(data: data)
//			return
//		}
//		var node = head
//		while node?.next != nil {
//			node = node?.next
//		}
//		node?.next = Node(data: data)
//	}
//
//	func removeFirstNode() {
//		if head == nil {
//			return
//		}
//		head = head?.next
//	}
//
//
//}
//
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = input[0]
//let k = input[1]
//
//var list = LinkedList<Int>(head: nil)
//
//for i in 1...n {
//	list.append(data: i)
//}
//
//var result = [String]()
//
//while result.count != n {
//	for _ in 1..<k {
//		list.append(data: list.head?.data)
//		list.removeFirstNode()
//	}
//	result.append(String((list.head?.data)!))
//}
//
//print("<\(result.joined(separator: ", "))>")
