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



//// 1. Two Sum -2 해시 -- 빠름.
//
//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//	var hashTable = [Int:Int]()
//	for i in 0..<nums.count {
//		let diff = target - nums[i]
//		if hashTable[diff] != nil {
//			return [i, hashTable[diff]!]
//		}
//		hashTable[nums[i]] = i
//	}
//	return []
//}
//
//print(twoSum([7,2,13,11,8], 24))


// 13. Roman to Integer

//func romanToInt(_ s: String) -> Int {
//	let dict = ["I":1, "V":5, "X":10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000]
//
//	var sArr = [String]()
//	for str in s {
//		sArr.append(String(str))
//	}
//
//	var num = 0
//	var sum = 0
//	var checkNum = dict[sArr.last!]!
//
//	while sArr.count > 0 {
//		if dict[sArr.last!]! > checkNum {
//			sum += num
//			num = dict[sArr.last!]!
//			checkNum = dict[sArr.last!]!
//		} else if dict[sArr.last!]! < checkNum {
//			num -= dict[sArr.last!]!
//		} else {
//			num += dict[sArr.last!]!
//		}
//
//		sArr.removeLast()
//		if sArr.count == 0 {
//			sum += num
//		}
//	}
//
//	return sum
//}

//print(romanToInt("MCMXCIV"))

