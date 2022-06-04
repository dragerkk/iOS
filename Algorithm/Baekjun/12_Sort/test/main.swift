//
//  main.swift
//  test
//
//  Created by 강주원 on 2022/04/20.
//

import Darwin

// // 2750 수 정렬하기, 8ms, 62228KB
// let input = Int(readLine()!)!
// var array : [Int] = []
// for _ in 1...input {
// 	array.append(Int(readLine()!)!)
// }
// array.sort()
// for i in 0..<array.count {
// 	print(array[i])
// }
// 시간복잡도가 O(n^2)인 정렬 알고리즘으로 다시 풀어볼 것

// // 2751 수 정렬하기 2 -1, 1344ms, 74716KB
// let input = Int(readLine()!)!
// var array : [Int] = []
// for _ in 1...input {
// 	array.append(Int(readLine()!)!)
// }
// array.sort()
// for i in 0..<array.count {
// 	print(array[i])
// }
// 정렬-swift 내장함수를 이용했을 시 시간이 오래걸림
// 시간복잡도가 O(nlong)인 정렬 알고리즘으로 다시 풀어볼 것

// // 10989 수 정렬하기 3 (카운팅 정렬) , 시간초과, 스위프트의 경우 카운팅 정렬에서 시간초과가 나는 듯. 빠른 입출력을 사용하면 된다고는 하는데.. 카운팅 정렬을 파악한 것에 의미를 두고자 함
// let num = Int(readLine()!)!
// var inputArray : [Int] = []

// for _ in 1...num {
// 	inputArray.append(Int(readLine()!)!)
// }

// var count = Array(repeating:0, count:inputArray.max()!+1)
//// max()도 배열 원소를 일일히 세기 때문에 O(N) 시간 소요됨
// for i in 0..<inputArray.count {
// 	count[inputArray[i]] += 1
// }

// for i in 1..<count.count {
// 	count[i] += count[i-1]
// }

// var result = Array(repeating:0, count:inputArray.count)

// for i in inputArray {
// 	let num = count[i]
// 	result[num-1] = i
// 	count[i] -= 1
// }

// for i in result {
// 	print(i)
// }

// // 2108 통계학, 320ms, 85764KB
// import Foundation
// let caseNum = Int(readLine()!)!
// var inputNum : [Int] = []
// for _ in 1...caseNum {
// 	inputNum.append(Int(readLine()!)!)
// }
// inputNum.sort()

// var sum = inputNum.reduce(0,+)
// var countArray = [Int:Int]()

// inputNum.forEach { countArray[$0] = (countArray[$0] ?? 0)+1 }

// print(Int(round(Double(sum)/Double(caseNum)))) //산술평균
// print(inputNum[caseNum/2]) //중앙값

// let max = countArray.max {a,b in a.value < b.value}!.value
// var count = countArray.filter({$0.value == max}).keys.sorted()

// if count.count == 1 {
// 	print(count[0])
// } else {
// 	print(count[1])
// } //최빈값

// let range = inputNum[inputNum.count-1] - inputNum[0]
// print(range) //범위

// // 1427 소트인사이드 -1, 8ms, 69104KB
// var input = Int(readLine()!)!
// var count = 0
// var checkNum = input
// while checkNum > 0 {
// 	if checkNum >= 10 {
// 		checkNum /= 10
// 		count += 1
// 	} else {
// 		count += 1
// 		break
// 	}
// }
// var array = [Int]()
// for _ in 1...count {
// 	array.append(input%10)
// 	input /= 10
// }
// array.sort(by: >)
// for i in 0..<array.count {
// 	print(array[i], terminator:"")
// }
// print("")

// // 1427 소트인사이드 -2, 12ms, 69100KB
// print(String(readLine()!.sorted(by:>)))

// // 11650 좌표 정렬하기 324ms, 77596KB
// let caseNum = Int(readLine()!)!

// var array : [[Int]] = []
// for _ in 1...caseNum {
// 	array.append(readLine()!.split(separator: " ").map{Int(String($0))!})
// }

// let sortedArray = array.sorted {
// 	if $0[0] == $1[0] {
// 		return $0[1] < $1[1]
// 	}
// 	return $0[0] < $1[0]
// }
// for i in sortedArray {
// 	print(i[0], i[1])
// }

// // 11651 좌표 정렬하기 2, 324ms, 76812KB
// let caseNum = Int(readLine()!)!
// var array : [[Int]] = []
// for _ in 1...caseNum {
// 	array.append(readLine()!.split(separator: " ").map{Int(String($0))!})
// }
// array.sort() {
// 	if $0[1] == $1[1] {
// 		return $0[0] < $1[0]
// 	}
// 	return $0[1] < $1[1]
// }
// for i in array {
// 	print(i[0], i[1])
// }

// // 1181 단어 정렬-1, 464ms, 72300KB

// let caseNum = Int(readLine()!)!
// var input : [String] = []
// for _ in 1...caseNum {
// 	input.append(readLine()!)
// }
// var stringSort = input.sorted {
// 	if $0.count == $1.count {
// 		return	$0 < $1
// 	} else {
// 		return	$0.count < $1.count
// 	}
// }
// for i in 0..<stringSort.count {
// 	if i == 0 {
// 		print(stringSort[i])
// 	} else {
// 		if stringSort[i] == stringSort[i-1] {
// 			continue
// 		} else {
// 			print(stringSort[i])
// 		}
// 	}
// }

// // 1181 단어 정렬-2, 68ms, 75096KB
// let caseNum = Int(readLine()!)!
// var input : [String] = []
// for _ in 1...caseNum {
// 	input.append(readLine()!)
// }
// input = Array(Set(input))
// //Set는 중복값을 허용하지 않기 때문에 이 방법으로 array의 중복값을 제거할 수 있다.
// var tuple = [(Int, String)]()
// for word in input {
// 	tuple.append((word.count, word))
// }
// tuple.sort(by:<)
// var result = ""
// for tuples in tuple {
// 	result += "\(tuples.1)\n"
// }
// print(result)

// // 10814 나이순 정렬-1, 버블정렬로 코드를 짰는데 시간초과 뜸
// let caseNum = Int(readLine()!)!
// var data : [(Int, String)] = []

// for _ in 1...caseNum {
// 	var input = readLine()!.split(separator: " ")
// 	let age = Int(input[0])!
// 	let name = String(input[1])
// 	data.append((age, name))
// }

// var temp = (0,"0")
// for _ in 1...(data.count-1) {
// 	for j in 0..<(data.count-1) {
// 		if data[j].0 > data[j+1].0 {
// 			temp = data[j]
// 			data[j] = data[j+1]
// 			data[j+1] = temp
// 		}
// 	}
// }
// for i in 0..<data.count {
// 	print("\(data[i].0) \(data[i].1)")
// }

// // 10814 나이순 정렬 -2 , 정렬 알고리즘 따로 사용하지 않고 swift의 sort() 사용함, 184ms

// let caseNum = Int(readLine()!)!
// var data : [(Int, Int, String)] = []

// for i in 1...caseNum {
// 	let input = readLine()!.split(separator: " ").map{String($0)}
// 	let age = Int(input[0])!
// 	let name = input[1]
// 	data.append((i, age, name))
// }

// data.sort() { a, b in
// 	a.1 == b.1 ? a.0 < b.0 : a.1 < b.1
// }

// for i in 0..<data.count {
// 	print("\(data[i].1) \(data[i].2)")
// }

//// 18870 좌표 압축, 배열->Set 사용, 시간초과...ㅡㅡ
//
//let caseNum = Int(readLine()!)!
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//for i in 0..<caseNum {
//	var gap = 0
//	var tempArr : [Int] = []
//	var resultArr : [Int] = []
//
//	for j in 0..<caseNum {
//		gap = input[i] - input[j]
//		if gap > 0 {
//			tempArr.append(gap)
//		}
//	}
//	resultArr = removeDuplication(array: tempArr)
//	print(resultArr.count, terminator: " ")
//}
//
//func removeDuplication (array:[Int]) -> [Int] {
//	let arraySet = Set(array)
//	return Array(arraySet)
//}
//
//// 18870 좌표 압축, for문 사용하지 않고 작성,
//let caseNum = Int(readLine()!)!
//let inputNum = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//var numSet : Set<Int> = []
//var numDict : [Int:Int] = [:]
//
//inputNum.forEach{numSet.insert($0)}
//let sortedArr = numSet.sorted()
//Array(0..<sortedArr.count).forEach{numDict[sortedArr[$0]] = $0}
//
//print(inputNum.map{String(numDict[$0]!)}.joined(separator: " "))
////let input = [1,2,2,5,3]
////var numSet : Set<Int> = []
////var numDict : [Int:Int] = [:]
////
////input.forEach{numSet.insert($0)}
////print("numset: \(numSet)")
////let sorted = numSet.sorted()
////print("sorted = \(sorted)")
////Array(0..<sorted.count).forEach{ numDict[sorted[$0]] = $0}
////print("dict = \(numDict)")
////print(input.map{String(numDict[$0]!)}.joined(separator: " "))


//// 1931 회의실 배정
//let n = Int(readLine()!)!
//var input = Array(repeating: Array(repeating: 0, count: 2), count: n)
//
//for i in 0..<n {
//	input[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
//}
//
//input.sort{
//	if $0[1] == $1[1] {
//		return $0[0] < $1[0]
//	} else {
//		return $0[1] < $1[1]
//	}
//}
//
//var result = 0
//var endTime = 0
//for i in 0..<n {
//	if input[i][0] >= endTime {
//		endTime = input[i][1]
//		result += 1
//	}
//}
//
//print(result)


//// 2309 일곱 난쟁이
//var numArr = [Int]()
//for _ in 1...9 {
//	numArr.append(Int(readLine()!)!)
//}
//var diff = numArr.reduce(0, +) - 100
//
//var result = expel(numArr, diff).sorted(by: <)
//for i in 0..<result.count {
//	print(result[i])
//}
//
//func expel(_ arr:[Int], _ num:Int) -> [Int] {
//	var resultArr = arr
//	for i in 0..<arr.count-1 {
//		for j in i+1..<arr.count {
//			if arr[j] == num - arr[i] {
//				resultArr.remove(at: j)
//				resultArr.remove(at: i)
//				return resultArr
//			}
//		}
//	}
//	return []
//}

