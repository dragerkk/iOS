//// 2480 - 주사위 세 개
//
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//var dice = [1:0, 2:0, 3:0, 4:0, 5:0, 6:0]
//
//for i in input {
//	dice[i]! += 1
//}
//
//var sum = 0
//var one = [Int]()
//
//for i in 1...6 {
//	if dice[i] == 3 {
//		sum = 10000 + i * 1000
//		break
//	} else if dice[i] == 2 {
//		sum = 1000 + i * 100
//		break
//	} else if dice[i] == 1 {
//		one.append(i)
//	}
//}
//
//if sum != 0 {
//	print(sum)
//} else {
//	print(one.max()!*100)
//}


//// 1546 평균
//let n = Float(readLine()!)!
//let score = readLine()!.split(separator : " ").map{Float(String($0))!}
//let maxScore = score.max()!
//let fakeScore = score.map{$0/maxScore*100}
//let fakeAvarage = fakeScore.reduce(0,+)/n
//print(fakeAvarage)


// 5691 평균 중앙값 문제

while true {
	let input = readLine()!.split(separator: " ").map{Int(String($0))!}
	if input[0] == 0 && input[1] == 0 {
		break
	}
	print(2*input[0]-input[1])
}
