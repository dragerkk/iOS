// // 10818 최소, 최대
// let caseNum = Int(readLine()!)!
// let num = readLine()!.split(separator: " ").map{Int(String($0))!}
// print(num.min()!, num.max()!)
// // https://velog.io/@ryan-son/Swift-10818-최소-최대-백준-B3
// // split으로 배열에 저장하는 경우 [String.SubSequence] 타입이 된다. 일반적인 [String] 타입과 다른 타입이다
// // Int로 변환 시 String.SubSequence -> Int 보다 String.SubSequence -> String -> Int 수행속도가 더 빠르다.

// // 2562 최댓값
// var num:[Int] = []
// for _ in 1...9 {
// 	num.append(Int(readLine()!)!)
// }
// let index = num.firstIndex(of: num.max()!)!+1
// print(num.max()!)
// print(index)
// //https://velog.io/@ryan-son/Swift-2562-%EC%B5%9C%EB%8C%93%EA%B0%92-%EB%B0%B1%EC%A4%80-B3

// // 2577 숫자의 개수
// var num:[Int] = []
// var nums:[Int] = []

// for _ in 1...3 {
// 	num.append(Int(readLine()!)!)
// }

// let multiplied = num.reduce(1,{$0*$1})

// let splitNum = String(multiplied).map {Int(String($0))!}

// for i in 0...9 {
// 	let countNum = splitNum.filter{$0 == i}.count
// 	nums.append(countNum)
// }
// nums.forEach {
// 	print($0)
// }

// // 3052 나머지

// var numDict:[Int:Int] = [:]
// for _ in 1...10 {
// 	let num = Int(readLine()!)! % 42
// 	if numDict[num] == nil {
// 		numDict[num] = 1
// 	}
// }
// print(numDict.count)

// // 3052 나머지 - 두번째
// var numDict: Set<Int> = []
// for _ in 1...10 {
// 	numDict.insert(Int(readLine()!)! % 42)
// }
// print(numDict.count)

// // 1546 평균 - 첫번째
// let count = Int(readLine()!)!
// var score = readLine()!.split(separator: " ").map{Float(String($0))!}
// let maxScore = score.max()!
// var fakeScore:[Float] = []
// for i in 0...count-1 {
// 	fakeScore.append(score[i]/maxScore*100)
// }
// let fakeAvarage = fakeScore.reduce(0,{$0+$1})/Float(count)
// print(fakeAvarage)

// // 1546 평균 - 두번째
// let count = Int(readLine()!)!
// var score = readLine()!.split(separator: " ").map{Float(String($0))!}
// let maxScore = score.max()!
// let fakeScore = score.map{$0/maxScore*100}
// let fakeAvarage = fakeScore.reduce(0,+)/Float(count)
// print(fakeAvarage)

// // 8958 OX퀴즈 - 첫번째

// let qNum = Int(readLine()!)!
// for _ in 1...qNum {
// 	var answer = readLine()!.map{String($0)}
// 	var aNum = answer.count
// 	var score:[Int] = []
// 	for i in 0...aNum-1 {
// 		if i == 0 {
// 			if answer[i] == "O" {
// 				score.append(1)
// 			} else {
// 				score.append(0)
// 			}
// 		} else if i > 0 {
// 			if answer[i] == "O" && answer[i-1] == "O" {
// 				score.append(score[i-1]+1)
// 			} else if answer[i] == "O" && answer[i-1] != "O" {
// 				score.append(1)
// 			} else {
// 				score.append(0)
// 			}
// 		} 
// 	}
// 	let sum = score.reduce(0,+)
// 	print(sum)
// }

// // 8958 OX퀴즈 - 두번째
// let qNum = Int(readLine()!)!
// for _ in 1...qNum {
// 	var sum = 0
// 	var score = 0
// 	let answer = readLine()!
// 	for i in answer {
// 		if i == "O" {
// 			sum += score + 1
// 			score += 1
// 		} else {
// 			score = 0
// 		}
// 	}
// 	print(sum)
// }
// // 8958 ox퀴즈 - 세번째 (가우스)
// let qNum = Int(readLine()!)!
// for _ in 0...qNum-1 {
// 	var sum = readLine()!.split(separator : "X").map{$0.count * ($0.count+1)/2}.reduce(0, +)
// 	print(sum)
// }

// 4344 평균은 넘겠지
import Foundation
let caseNum = Int(readLine()!)!
for _ in 1...caseNum {
	var inputArr = readLine()!.split(separator: " ").map{Double(String($0))!}
	let studentNum = inputArr[0]
	inputArr.removeFirst()
	let average = inputArr.reduce(0,+)/studentNum
	let highStudent = inputArr.filter{$0>average}
	let result = Double(highStudent.count)/studentNum*100
	print(String(format: "%.3f", result),"%", separator: "")
	}
