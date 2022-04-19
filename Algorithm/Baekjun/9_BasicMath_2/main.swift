
// // 1978 소수 찾기 -1, 8ms, 62232KB
// let caseNum = Int(readLine()!)!
// let input = readLine()!.split(separator: " ").map{Int(String($0))!}

// var num = 1000
// var numArray = Array(0...1001)
// var count = 0

// for i in 0..<numArray.count {
// 	if numArray[i] <= 1 {
// 		numArray[i] = 0
// 		continue
// 	}
// 	for j in stride(from: i+i, through: num, by: i) {
// 		numArray[j] = 0
// 	}
// }

// for i in input {
// 	if numArray.contains(i) {
// 		count += 1
// 	}
// }

// print(count)

// // 2581 소수, 8ms, 62228KB
// let input1 = Int(readLine()!)!
// let input2 = Int(readLine()!)!

// var num = 10000
// var numArray = Array(0...10001)

// for i in 0..<numArray.count {
// 	if numArray[i] <= 1 {
// 		numArray[i] = 0
// 		continue
// 	}
// 	for j in stride(from: i+i, through: num, by: i) {
// 		numArray[j] = 0
// 	}
// }

// var result:[Int] = []

// for i in input1...input2 {
// 	if numArray[i] != 0 {
// 		result.append(numArray[i])
// 	}
// }
// if result.count == 0 {
// 	print(-1)
// } else {
// 	print(result.reduce(0,+))
// 	print(result[0])
// }

// // 11653 소인수분해, 76ms, 62228KB
// var num = Int(readLine()!)!
// var result : [Int] = []

// if num < 4 {
// 	if num > 1 {
// 		print(num)
// 	}
// } else {
// 	for i in 2...num/2 {
// 		while num % i == 0 {
// 			if num % i == 0 {
// 				result.append(i)
// 				num /= i
// 			}
// 		}
// 	}
// 	if !(result.isEmpty) {
// 		for i in result {
// 			print(i)
// 		}		
// 	} else {
// 		print(num)
// 	}
// }

// // 1929 소수 구하기, 120ms, 69908KB

// var input = readLine()!.split(separator: " ").map{Int(String($0))!}
// var array = Array(0...input[1])
// let num = input[1]
// var result : [Int] = []

// for i in 0..<array.count {
// 	if array[i] <= 1 {
// 		array[i] = 0
// 		continue
// 	}
// 	for j in stride (from: i+i, through: num, by: i) {
// 		array[j] = 0
// 	}
// }
// for i in input[0]...input[1] {
// 	if array[i] != 0 {
// 		print(array[i])
// 	}
// }

// // 4948 베르트랑 공준, 304ms, 65360KB

// var num = 1
// while num != 0 {
// 	num = Int(readLine()!)!
// 	if num == 0 {
// 		break
// 	}
// 	var doubleNum = num*2
// 	var array = Array(0...doubleNum)

// 	for i in 0..<array.count {
// 		if array[i] <= 1 {
// 			array[i] = 0
// 			continue
// 		}
// 		for j in stride (from:i+i, through:doubleNum, by:i) {
// 			array[j] = 0
// 		}
// 	}
// 	var count = 0
// 	for i in num+1...doubleNum {
// 		if array[i] != 0 {
// 			count += 1
// 		}
// 	}
// 	print(count)
// }

// // 9020 골드바흐의 추측 -1, 시간초과

// let inputNum = Int(readLine()!)!
// var array = Array(0...10000)
// 	for i in 0...5000 {
// 		if array[i] <= 1 {
// 			array[i] = 0
// 			continue
// 		}
// 		for j in stride (from:i+i, through: 5000, by: i) {
// 			array[j] = 0
// 		}
// 	}

// for _ in 1...inputNum {
// 	let input = Int(readLine()!)!
// 	var prime:[Int] = []

// 	for i in 0..<input {
// 		if array[i] != 0 {
// 			prime.append(array[i])
// 		}
// 	}

// 	var result:[Int] = [0,0]
// 	var gap = 10000

// 	for i in 0..<prime.count {
// 		for j in i..<prime.count {
// 			if prime[i] + prime[j] == input {
// 				if prime[j] - prime[i] < gap {
// 					gap = prime[j] - prime[i]
// 					result[0] = prime[i]
// 					result[1] = prime[j]
// 				} else {
// 					continue
// 				}
// 			}
// 		}
// 	}
// 	print("\(result[0]) \(result[1])")
// }

// // 9020 골드바흐의 추측 -2, 120ms, 79164KB
// import Foundation

// var array = Array(0...10000)
// var sqr = Int(Double(array.count).squareRoot())

// for i in 0...sqr {
// 	if array[i] <= 1 {
// 		array[i] = 0
// 		continue
// 	}
// 	for j in stride (from:i+i, through: 10000, by: i) {
// 		array[j] = 0
// 	}
// }

// var prime:[Int] = []
// for i in 0..<array.count {
// 	if array[i] != 0 {
// 		prime.append(array[i])
// 	}
// }

// let inputNum = Int(readLine()!)!

// for _ in 1...inputNum {
// 	let input = Int(readLine()!)!
// 	var num1 = input/2
// 	var num2 = input/2
// 	while true {
// 		if num1 + num2 == input {
// 			if prime.contains(num1) && prime.contains(num2) {
// 				print("\(num1) \(num2)")
// 				break
// 			}
// 		}
// 		num1 -= 1
// 		num2 += 1
// 	}
// }

// // 1085 직사각형에서 탈출 -1(더러운버전), 8ms, 62232KB
// let input = readLine()!.split(separator: " ").map{Int(String($0))!}
// let x1 = 0
// let x2 = input[2]
// let y1 = 0
// let y2 = input[3]
// let currX = input[0]
// let currY = input[1]

// func distance(_ n1:Int, _ n2:Int) -> Int {
// 	return abs(n1-n2)
// }

// var array:[Int] = []
// array.append(distance(x1,currX))
// array.append(distance(x2,currX))
// array.append(distance(y1,currY))
// array.append(distance(y2,currY))
// print(array.min()!)

// // 1085 직사각형에서 탈출 -2(깔끔한 버전), 8ms, 62232KB

// var input = readLine()!.split(separator: " ").map{Int(String($0))!}
// // input2,3에 각각 현재위치와의 거리를 구한다. input0,1은 원점과의 거리이기 때문에 따로 구할 필요가 없다.
// input[2] -= input[0]
// input[3] -= input[1]

// print(input.min()!)

// // 3009 네 번째 점, 8ms, 62232KB
// let dot1 = readLine()!.split(separator: " ").map{Int(String($0))!}
// let dot2 = readLine()!.split(separator: " ").map{Int(String($0))!}
// let dot3 = readLine()!.split(separator: " ").map{Int(String($0))!}
// var result:[Int] = []

// for i in 0...1 {
// 	if dot1[i] == dot2[i] {
// 		result.append(dot3[i])
// 	} else if dot1[i] == dot3[i] {
// 		result.append(dot2[i])
// 	} else if dot2[i] == dot3[i] {
// 		result.append(dot1[i])
// 	}
// }

// print("\(result[0]) \(result[1])")

// // 4153 직각삼각형, 8ms, 62236KB
// var input : [Int] = []

// while true {
// 	input = readLine()!.split(separator: " ").map{Int(String($0))!}
// 	input.sort()
// 	if input == [0, 0, 0] {
// 		break
// 	}
// 	if input[0]*input[0] + input[1]*input[1] == input[2]*input[2] {
// 		print("right")
// 	} else {
// 		print("wrong")
// 	}
// }

// // 3053 택시 기하학 -1, 16ms, 79160KB
// import Foundation
// let input = Double(readLine()!)!
// let sqr = input*input
// let taxi = (sqr+sqr).squareRoot()
// print(sqr*3.14159265359)
// print(taxi*taxi)

// // 3053 택시 기하학 -2, 8ms, 62224KB
// let input = Double(readLine()!)!
// print("\(Double.pi*input*input)\n\(2*input*input)")

// 1002 터렛****, 12ms, 79168KB
import Foundation
let caseNum = Int(readLine()!)!

for _ in 1...caseNum {
	let input = readLine()!.split(separator: " ").map{Double(String($0))!}

	let distance = (pow((input[0]-input[3]),2)+pow((input[1]-input[4]),2)).squareRoot()
	let rAdd = input[2] + input[5]
	let rSub = abs(input[2] - input[5])
	
	
	if distance == 0 && rSub == 0 {
		print(-1)
	} // 두 원이 일치, 중점 동일&거리동일
	else if distance < rSub || distance > rAdd {
		print(0)
	} // 원이 원 안에 포함 || 두 원이 멀어서 만나지 않음
	else if distance < rAdd && distance > rSub {
		print(2)
	} // 원이 겹쳐서 두 점에서 만나는 경우
	else if distance == rAdd || (distance == rSub && distance != 0) {
		print(1)
	} // 한 점에서 외접 || 내접하는 경우
}