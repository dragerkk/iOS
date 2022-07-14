// 1

func solution(_ array:[String]) -> [Int] {
	
	var dict = ["XS":0, "S":0, "M":0, "L":0, "XL":0, "XXL":0]
	let check = ["XS", "S", "M", "L", "XL", "XXL"]
	var result = [Int]()
	
	for i in array {
		dict[i]! += 1
	}
	
	for i in check {
		result.append(dict[i]!)
	}
	
	return result
}

print(solution(["XS", "S", "L", "L", "XL", "S"]))
