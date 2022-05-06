import Foundation
// 연산자 우선순위

let expression = "100-200*300-500+20" // answer:60420

//let arr = expression.components(separatedBy: CharacterSet(charactersIn: "-+*"))



let N = 5
let stages = [2,1,4,3,5]

var userLevel = stages.sorted()
var stageCleared = Array(repeating: 0, count: N+1)

for i in 0..<userLevel.count {
	if userLevel[i] != 1 {
		for j in 1..<userLevel[i] {
			stageCleared[j] += 1
		}
	}
}

var dict : [Int:Int] = [:]
for i in 0...N {
	dict[i] = stageCleared[i]
}

var failRate : [Int:Double] = [:] // stage : failRate
stageCleared[0] = stages.count

for i in 1...N {
	if stageCleared[i-1] == 0 {
		failRate[i] = 0
	} else {
		failRate[i] = (1 - (Double(stageCleared[i])) / Double(stageCleared[i-1]))
	}
}

let result = failRate.sorted {
	if $0.1 == $1.1 {
		return $0 < $1
	} else {
		return $0.1 > $1.1
	}
}

var returnArr : [Int] = []

for i in 0..<result.count {
	returnArr.append(result[i].key)
}

print(returnArr)
