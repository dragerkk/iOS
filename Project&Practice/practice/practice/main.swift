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



