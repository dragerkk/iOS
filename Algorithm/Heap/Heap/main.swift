
class Heap<T: Comparable> {
	
	var data: [T]
	var rootNode: T?
	var lastNode: T?
	
	init(data:[T]) {
		self.data = data
		self.rootNode = data.first
		self.lastNode = data.last
	}
	
	func leftChildIndex(index:Int) -> Int {
		return (index*2)+1
	}
	
	func rightChildIndex(index:Int) -> Int {
		return (index*2)+2
	}
	
	func parentIndex(index:Int) -> Int {
		return (index-1)/2
	}
	
}

extension Heap { // Insert
	
	func insert(_ data:T) {
		
		self.data.append(data)
		
		var newNodeIndex = self.data.count - 1
		
		while newNodeIndex > 0
				&& self.data[newNodeIndex] > self.data[parentIndex(index: newNodeIndex)] {
			//swap
			let temp = self.data[newNodeIndex]
			self.data[newNodeIndex] = self.data[parentIndex(index: newNodeIndex)]
			self.data[parentIndex(index: newNodeIndex)] = temp
			
			newNodeIndex = parentIndex(index: newNodeIndex)
		}
	}
}

// ########################## oooo
extension Heap { // Delete
	
	func delete() {
	
		data[0] = data.removeLast()
		var trickleNodeIndex = 0 // current index
		
		while hasGreaterChild(index: trickleNodeIndex) == true {
			let largerChildIndex = calculateLargerChildIndex(index: trickleNodeIndex)
			//swap
			let temp = data[trickleNodeIndex]
			data[trickleNodeIndex] = data[largerChildIndex]
			data[largerChildIndex] = temp
			
			trickleNodeIndex = largerChildIndex
		}
		
	}
	
	func hasGreaterChild(index:Int) -> Bool {
		
		if (leftChildIndex(index: index) < data.count && data[leftChildIndex(index: index)] > data[index])
			|| (rightChildIndex(index: index) < data.count && data[rightChildIndex(index: index)] > data[index]) {
			return true
		} else {
			return false
		}
	}
	
	func calculateLargerChildIndex(index:Int) -> Int {
		if rightChildIndex(index: index) >= data.count {
			return leftChildIndex(index: index)
		}
		
		if data[rightChildIndex(index: index)] > data[leftChildIndex(index: index)] {
			return rightChildIndex(index: index)
		} else {
			return leftChildIndex(index: index)
		}
	}
	
}



var heap = Heap(data: [20])
heap.insert(100)
heap.insert(10)
heap.insert(60)
heap.insert(80)
heap.insert(30)
heap.insert(40)
heap.insert(50)
heap.delete()
heap.delete()
print(heap.data)
// print: [80,60,40,50,20,10,30]
