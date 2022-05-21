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
//
//
//// 2. 문자열 배열을 받고, 중복되는 값을 출력, O(N)이어야 함
//
//func returnDuplicate(arr: [Character]) {
//	var hashTable: [Character:Bool] = [:]
//
//	for i in arr {
//		if hashTable[i] != nil {
//			print(i)
//		} else {
//			hashTable[i] = true
//		}
//	}
//}
//
//let arr : [Character] = ["a","b","c","d","a","e","c","a"]
//returnDuplicate(arr: arr)
//
//
//
//// 3. 26개의 알파벳 a-z 중 한 글자를 제외하고 모두 포함하는 문자열을 받고, 빠진 문자를 출력
//// O(N)이어야 함
//
//let myString = "ab cef ghijk lmnopqr st uvwx yz" // d 빠짐
//myString.filter{$0 != " "}
//
//func missingAlphabet(str: String) {
//	let alphabet = "abcdefghijklmnopqrstuvwxyz"
//	var hashTable : [Character:Bool] = [:]
//
//	for j in str {
//		hashTable[j] = true
//	}
//
//	for k in alphabet {
//		if hashTable[k] == nil {
//			print(k)
//		}
//	}
//
//}
//
//missingAlphabet(str: myString.filter{$0 != " "})
////
//
//
//// 4. 입력받은 문자열에서 한 번만 등장하는 문자 중 먼저 나오는 문자만 출력, O(N)이어야 함
//
//let myString = "leehyolee" // h만 출력되어야 함
//
//firstSolo(str: myString)
//
//func firstSolo(str: String) {
//	var hashTable : [Character:Int] = [:]
//
//	for i in str {
//		if hashTable[i] == nil {
//			hashTable[i] = 1
//		} else {
//			hashTable[i]! += 1
//		}
//	}
//
//	for j in str {
//		if hashTable[j] == 1 {
//			print(j)
//			break // h'만' 출력되어야 하기 때문에 멈춰줌
//		}
//	}
//}
//
