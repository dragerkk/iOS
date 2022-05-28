// 1. Two Sum -1


//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//	for i in 0..<nums.count {
//
//		if let j = nums.lastIndex(of: target - nums[i]) {
//			if i != j {
//				return [i,j]
//			}
//		}
//
//	}
//	return []
//}



// 1. Two Sum -2 해시 -- 빠름.

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
	var hashTable = [Int:Int]()
	for i in 0..<nums.count {
		let diff = target - nums[i]
		if hashTable[diff] != nil {
			return [i, hashTable[diff]!]
		}
		hashTable[nums[i]] = i
	}
	return []
}

print(twoSum([7,2,13,11,8], 24))
