class Node<T> {
	var node: T
	var next_node: Node?
	var previous_node: Node?
	
	init(node: T) {
		self.node = node
	}
}
class Queue<T: Equatable> {
	var queue: [T] = []
	
	func push(_ data:T) {
		queue.append(data)
	}
	func pop() {
		
	}
}
