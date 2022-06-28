
// 24479 깊이 우선 탐색 1
import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}

var dict = [Int:[Int]]()

for _ in 1...input[0] {
	let n = readLine()!.split(separator: " ").map{Int(String($0))!}
	if dict[n[0]] == nil {
		dict[n[0]] = [n[1]]
	} else if !dict[n[0]]!.contains(n[1]) {
		dict[n[0]]?.append(n[1])
	}

	if dict[n[1]] == nil {
		dict[n[1]] = [n[0]]
	} else if !dict[n[1]]!.contains(n[0]) {
		dict[n[1]]?.append(n[0])
	}
}

for i in 0..<dict.count {
	dict[i]?.sort()
}

print(dict)

var start = input[2]

depthFirstSearch(graph: dict, vertex: start)


func depthFirstSearch(graph: [Int:[Int]], vertex: Int, check:[Int:Bool]=[:]) {
	
}

