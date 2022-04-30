// 시간초과

let n = 20
let answers = [1,3,2,4,2]
//let num = answers.count
let count1 = n/5 + 1
let count2 = n/8 + 1
let count3 = n/10 + 1
let arr1 : [Int] = Array(repeating: [1,2,3,4,5], count:count1).flatMap{$0}
let arr2 : [Int] = Array(repeating: [2,1,2,3,2,4,2,5], count:count2).flatMap{$0}
let arr3 : [Int] = Array(repeating: [3,3,1,1,2,2,4,4,5,5], count:count3).flatMap{$0}
var score = [0,0,0]

for i in 0..<answers.count {
	if arr1[i] == answers[i] {
		score[0] += 1
	}
	if arr2[i] == answers[i] {
		score[1] += 1
	}
	if arr3[i] == answers[i] {
		score[2] += 1
	}
}
var result:[Int] = []
if score.max() == score[0] {
	result.append(1)
}
if score.max() == score[1] {
	result.append(2)
}
if score.max() == score[2] {
	result.append(3)
}

print(result)
