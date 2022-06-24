
class Node <T: Comparable> {
	var data: T
	var leftChild: Node?
	var rightChild: Node?
	
	init(data: T) {
		self.data = data
	}
}

class BST <T: Comparable> {
	var rootNode: Node<T>?

	func search(_ data: T) {
		if rootNode == nil {
			return
		}
		var currentNode = rootNode

		while let node = currentNode {
			if node.data == data {
				print("\(data) existed in BST")
				return
			}
			if data < node.data {
				currentNode = node.leftChild
			} else {
				currentNode = node.rightChild
			}
		}
		print("No \(data) in BST")
	}
	
	
	func insert(_ data: T) {
		if rootNode == nil {
			rootNode = Node.init(data: data)
			return
		}
		
		var currentNode = rootNode
		
		while let node = currentNode {
			
			if data < node.data {
				guard let nextNode = node.leftChild else {
					return node.leftChild = Node.init(data: data)
				}
				currentNode = nextNode
			} else { // 중복된 노드가 삽입되지는 않을 것이므로 data > node.data를 그냥 else로 처리
				guard let nextNode = node.rightChild else {
					return node.rightChild = Node.init(data: data)
				}
				currentNode = nextNode
			}
		}
	
	}
	
	
	func remove(_ data: T) {
		
		guard let rootNode = rootNode else { return }
		
		var parentNode:Node = rootNode
		var currentNode:Node? = rootNode // 아래의 while문을 위해 optional로 줌
		
		while let node = currentNode {
			
			if node.data == data {
				if node.leftChild != nil && node.rightChild != nil { //자식이 2개 있을 때
					var findNodes = findSuccessorNode(node: node) //후속자노드 찾기
					var parentSuccessorNode = findNodes[0] //후속자노드의 부모노드
					var successorNode = findNodes[1] //후속자노드
					
					if successorNode.rightChild != nil { // 후속자노드에 오른쪽 자식이 존재할 경우
						currentNode?.data = successorNode.data
						successorNode.data = successorNode.rightChild!.data
						successorNode.rightChild = nil
					} else {
						currentNode?.data = successorNode.data
						parentSuccessorNode.leftChild = nil
					}
				} else if node.leftChild != nil { // 왼쪽 자식만 있을 때
					currentNode?.data = node.leftChild!.data
					currentNode?.leftChild = nil
				} else if node.rightChild != nil { // 오른쪽 자식만 있을 때
					currentNode?.data = node.rightChild!.data
					currentNode?.rightChild = nil
				} else { // 자식이 없을때
					if node.data < parentNode.leftChild!.data {
						parentNode.leftChild = nil
					} else {
						parentNode.rightChild = nil
					}
				}
				break // node.data == data 일때 위의 코드들 실행 후 break.
			}
			
			parentNode = currentNode ?? parentNode
			currentNode = data < node.data ? node.leftChild : node.rightChild
		}
		
	}
	
	func findSuccessorNode(node:Node<T>) -> [Node<T>] {
		var parentNode: Node<T> = node
		var successorNode: Node<T>?  = node.rightChild
		
		while successorNode?.leftChild != nil {
			parentNode = successorNode!
			successorNode = successorNode?.leftChild!
		}
	
		return [parentNode, successorNode!]
	}
	
	
// MARK: - draw Diagram
	func drawDiagram() {
		print(diagram(for: self.rootNode))
	}
	 
	private func diagram(for node: Node<T>?,
						 _ top: String = "",
						 _ root: String = "",
						 _ bottom: String = "") -> String {
	   guard let node = node else {
			return root + "nil\n"
		}
		if node.leftChild == nil && node.rightChild == nil {
			return root + "\(node.data)\n"
		}
		return diagram(for: node.rightChild, top + " ", top + "┌──", top + "│ ")
			+ root + "\(node.data)\n"
			+ diagram(for: node.leftChild, bottom + "│ ", bottom + "└──", bottom + " ")
	}
}

var bst = BST<Int>()
bst.insert(20)
bst.insert(15)
bst.insert(30)
bst.insert(12)
bst.insert(16)
bst.insert(27)
bst.insert(35)
bst.insert(29)
bst.insert(32)
bst.insert(38)
bst.drawDiagram()

bst.remove(30)
bst.drawDiagram()
//bst.search(from: 22)




