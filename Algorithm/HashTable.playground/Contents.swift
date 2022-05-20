//
//// 1. [1,2,3,4,5]과 [0,2,4,6,8]의 교집합을 O(N)으로 구할 것.
//
//func getCommon(arr1:[Int], arr2:[Int]) -> [Int] {
//	var intersection = [Int]()
//	var hashTable : [Int:Bool] = [:]
//	for i in 0..<arr1.count {
//		hashTable[arr1[i]] = true
//	}
//
//	for j in 0..<arr2.count {
//		if hashTable[arr2[j]] != nil {
//			intersection.append(arr2[j])
//		}
//	}
//
//	return intersection
//}
//
//
//let arr1 = [1,2,3,4,5]
//let arr2 = [0,2,4,6,8]
//
//getCommon(arr1: arr1, arr2: arr2)


// 2. 문자열 배열을 받고, 중복되는 값을 출력

func returnDuplicate(arr: [Character]) {
	var hashTable: [Character:Bool] = [:]
	
	for i in arr {
		if hashTable[i] != nil {
			print(i)
		} else {
			hashTable[i] = true
		}
	}
}

let arr : [Character] = ["a","b","c","d","a","e","c","a"]
returnDuplicate(arr: arr)
