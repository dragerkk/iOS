import Foundation

//// 실패율
//
//let N = 5
//let stages = [2,1,4,3,5]
//
//var userLevel = stages.sorted()
//var stageCleared = Array(repeating: 0, count: N+1)
//
//for i in 0..<userLevel.count {
//	if userLevel[i] != 1 {
//		for j in 1..<userLevel[i] {
//			stageCleared[j] += 1
//		}
//	}
//}
//
//var dict : [Int:Int] = [:]
//for i in 0...N {
//	dict[i] = stageCleared[i]
//}
//
//var failRate : [Int:Double] = [:] // stage : failRate
//stageCleared[0] = stages.count
//
//for i in 1...N {
//	if stageCleared[i-1] == 0 {
//		failRate[i] = 0
//	} else {
//		failRate[i] = (1 - (Double(stageCleared[i])) / Double(stageCleared[i-1]))
//	}
//}
//
//let result = failRate.sorted {
//	if $0.1 == $1.1 {
//		return $0 < $1
//	} else {
//		return $0.1 > $1.1
//	}
//}
//
//var returnArr : [Int] = []
//
//for i in 0..<result.count {
//	returnArr.append(result[i].key)
//}
//
//print(returnArr)



//// 체육복
//import Foundation
//let n = 3 // 2~30
//let lost = [3] // 1~n
//let reserve = [1] //
//
//var setZero : Set<Int> = Set(lost).subtracting(reserve)
//var setTwo : Set<Int> = Set(reserve).subtracting(lost)
//
//var haveZero = setZero.sorted()
//var haveTwo = setTwo.sorted()
//
//var count = n - haveZero.count
//
//for i in 0..<haveZero.count {
//	for j in 0..<haveTwo.count {
//		if haveZero[i] - 1 == haveTwo[j] || haveZero[i] + 1 == haveTwo[j] {
//			count += 1
//			haveTwo.remove(at: j)
//			break
//		}
//	}
//}
//
//print(count)

//
//// 모의고사 (수포자..)
//let answers = [1,2,3,4,5]
//
//let n = answers.count
//var arr1 = [1,2,3,4,5]
//var arr2 = [2,1,2,3,2,4,2,5]
//var arr3 = [3,3,1,1,2,2,4,4,5,5]
//
//var dict = [1 : 0, 2 : 0, 3 : 0]
//
//for i in 0..<answers.count {
//	if answers[i] == arr1[i%5] {
//		dict[1]! += 1
//	}
//	if answers[i] == arr2[i%8] {
//		dict[2]! += 1
//	}
//	if answers[i] == arr3[i%10] {
//		dict[3]! += 1
//	}
//}
//
//var max = dict.values.max()!
//
//for i in 1...3 {
//	if dict[i] != max {
//		dict[i] = nil
//	}
//}
//
//var sortedDict = dict.sorted {
//	if $0.1 == $1.1 {
//		return $0 < $1
//	} else {
//		return $0.1 > $1.1
//	}
//}
//
//var result = [Int]()
//
//for i in sortedDict {
//	result.append(i.key)
//}
//
//print(result)


//// 2022 카카오 코테 1
//
//let survey = ["AN", "CF", "MJ", "RT", "NA"]
//let choices = [5, 3, 2, 7, 5]
//// result = "TCMA"
//
//let n = survey.count
//
//let typeArr = ["R","T","C","F","J","M","A","N"]
//let choiceDict = [1:3,2:2,3:1,4:0,5:1,6:2,7:3]
//
//var score = ["R":0, "T":0,"C":0,"F":0,"J":0,"M":0,"A":0,"N":0]
//
//for i in 0..<n {
//	let type = String(survey[i]).map{String($0)}
//	if choices[i] > 0 && choices[i] < 4 {
//		score[type[0]]! += choiceDict[choices[i]]!
//	} else {
//		score[type[1]]! += choiceDict[choices[i]]!
//	}
//}
//
//var result = [String]()
//
//if score["R"] == score["T"] {
//	result.append("R")
//} else if score["R"]! > score["T"]! {
//	result.append("R")
//} else {
//	result.append("T")
//}
//
//if score["C"] == score["F"] {
//	result.append("C")
//} else if score["C"]! > score["F"]! {
//	result.append("C")
//} else {
//	result.append("F")
//}
//
//if score["J"] == score["M"] {
//	result.append("J")
//} else if score["J"]! > score["M"]! {
//	result.append("J")
//} else {
//	result.append("M")
//}
//
//if score["A"] == score["N"] {
//	result.append("A")
//} else if score["A"]! > score["N"]! {
//	result.append("A")
//} else {
//	result.append("N")
//}
//
//print(result.joined())


//// 2022 카카오 블테2 -1
//func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
//	var arr = queue1 + queue2
//	var total = 0
//	for i in arr {
//		total += i
//	}
//
//	if total%2 != 0 {
//		return -1
//	}
//
//	total /= 2
//
//	let maxCount = queue1.count * queue2.count
//	var count = 0
//
//	var result1 = [Int]()
//	var preResult2 = queue2
//
//	var k = 1
//
//	while k > 0 {
//		var index = 0
//		var sum1 = 0
//		var sum2 = 0
//		for i in 0..<arr.count {
//			sum1 += arr[i]
//			if sum1 == total {
//				index = i+1
//				for ii in 0...i {
//					result1.append(arr[ii])
//				}
//				break
//			}
//		}
//		for j in index..<arr.count {
//			sum2 += arr[j]
//			if sum2 == total {
//				break
//			}
//		}
//
//		if sum1 == total && sum2 == total {
//			for m in 0..<preResult2.count {
//				if preResult2[m] == result1[result1.endIndex - 1] {
//					count += m+1
//				}
//			}
//			k = 0
//		} else {
//			result1.removeAll()
//			count += 1
//			arr.append(arr[0])
//			preResult2.append(arr[0])
//			arr.removeFirst()
//
//			// if count > queue1.count {
//			// 	count += 1
//			// }
//			if count > maxCount {
//				count = -1
//				k = 0
//			}
//		}
//	}

// 2022 카카오 코테 2, -2

let queue1 = [1,2,1,2]
let queue2 = [1,10,1,2]

var arr = queue1 + queue2
let n = arr.count
var total = 0
for i in arr {
	total += i
}
total /= 2

//if total % 2 != 0 {
//	return -1
//}

let maxCount = queue1.count * queue2.count
var count = 0

var k = 1

//print(arr)
while k > 0 {
	var sum1 = 0
	
	if count > maxCount {
		count = -1
		k = 0
	}

	for i in 0..<arr.count {
		sum1 += arr[i]
//			print("arr[i]: \(arr[i]), sum1:\(sum1)")
		if sum1 == total {
//			print("sum2:\(sum1)")
//			print("until count : \(count)")
			count = count + queue2.count + count - (n-i+1) + 1 // q2 expected count - real count
//			count = count + queue2.count + count - (n-i)
			k=0
			break
		}
		if sum1 > total {
			break
		}
	}
	count += 1
	arr.append(arr[0])
	arr.removeFirst()
}


//print("result1 : \(result1)")
print("count: \(count)")



//// 2022 카카오 코테 3 - 몰라
//let alp = 10, cop = 10
//let problems = [[10,15,2,1,2],[20,20,3,3,4]]
//
//let alpReq = problems.compactMap{$0[0]}.max()!
//let copReq = problems.compactMap{$0[1]}.max()!
//
//
//print(alpReq, copReq)



