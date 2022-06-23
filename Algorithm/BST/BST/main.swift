
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
			rootNode = Node(data: data)
			return
		}
		
		var currentNode = rootNode
		
		while let node = currentNode {
			if data < node.data && node.leftChild == nil {
				node.leftChild = Node(data: data)
			} else if data < node.data && node.leftChild != nil {
				currentNode = node.leftChild
			} else if data > node.data && node.rightChild == nil {
				node.rightChild = Node(data: data)
			} else {
				currentNode = node.rightChild
			}
		}
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

let bst = BST<Int>()
bst.insert(20)
bst.insert(15)
bst.insert(30)
bst.insert(12)
bst.insert(16)

bst.drawDiagram()

bst.search(22)
//bst.search(from: 22)




