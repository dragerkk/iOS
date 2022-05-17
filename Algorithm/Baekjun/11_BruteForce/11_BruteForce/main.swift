

// // 2798 블랙잭, 8ms, 62232KB

// let input = readLine()!.split(separator: " ").map{Int(String($0))!}
// let card = readLine()!.split(separator: " ").map{Int(String($0))!}
// var result = 0

// for i in (0..<input[0]-2) {
// 	for j in (i+1..<input[0]-1) {
// 		for k in (j+1..<input[0]) {
// 			let sum = card[i]+card[j]+card[k]
// 			if sum == input[1] {
// 				result = sum
// 				break
// 			} else if result < sum && sum < input[1] {
// 				result = sum
// 			}
// 		}
// 	}
// }
// print(result)


// // 2231 분해합 -1, 580ms, 62228KB

// let input = Int(readLine()!)!

// for i in 0...input {
// 	let numString = String(i).map{String($0)}
// 	var sum = 0
// 	for j in 0..<numString.count {
// 		sum += Int(numString[j])!
// 	}
// 	if i + sum == input {
// 		print(i)
// 		break
// 	}
// 	if i == input {
// 		print(0)
// 	}
// }

// // 2231 분해합 -2, 12ms, 79164KB
// import Foundation
// let input = Int(readLine()!)!
// let digitNum = Int(log10(Double(input)))
// var min = 0
// var result = 0
// if input >= 27 {
// 	min = input - ((digitNum+1)*9)
// }

// for i in min...input {
// 	let numString = String(i).map{String($0)}
// 	var sum = 0
// 	for j in 0..<numString.count {
// 		sum += Int(numString[j])!
// 	}
// 	if i + sum == input {
// 		result = i
// 		break
// 	}
// }
// print(result)

// // 2231 분해합 -3, 8ms, 62224KB
// let input = Int(readLine()!)!

// for i in input-String(input).count*9...input {
// 	var num = i
// 	var sum = 0
// 	while num > 0 {
// 		sum += num%10
// 		num /= 10
// 	}
// 	if sum + i == input {
// 		print(i)
// 		break
// 	}
// 	if i == input {
// 		print(0)
// 	}
// }

// // 7568 덩치, 8ms, 62232KB
// let caseNum = Int(readLine()!)!
// var array : [Int] = []
// var result : [Int] = []
// for _ in 1...caseNum {
// 	let input = readLine()!.split(separator: " ").map{Int(String($0))!}
// 	array += input
// }

// for i in stride(from: 0, to: caseNum*2, by: 2) {
// 	var count = 1
// 	for j in stride(from: 0, to: caseNum*2, by: 2) {
// 		// print(array[i],array[j],array[i+1],array[j+1])

// 		if array[i] < array[j] && array[i+1] < array[j+1] {
// 			count += 1
// 		}
// 	}
// 	result.append(count)
// }
// for i in 0..<result.count {
// 	print("\(result[i]) ", terminator:"")
// }
// print("")

// // 1018 체스판 다시 칠하기, 8ms, 62232KB

// let size = readLine()!.split(separator: " ").map{Int(String($0))!}
// var array : [[String]] = []

// for _ in 0..<size[0] {
// 	array.append(readLine()!.map{String($0)})
// }
// var result = 64
// var count = 0

// for i in 0..<size[0]-7 {
// 	for j in 0..<size[1]-7 {
// 		var startW = 0
// 		var startB = 0
// 		for x in i...i+7 {
// 			for y in j...j+7 {
// 				if (x+y)%2 == 0 {
// 					if array[x][y] != "W" {
// 						startW += 1
// 					} else if array[x][y] != "B" {
// 						startB += 1
// 					}
// 				} else {
// 					if array[x][y] != "W" {
// 						startB += 1
// 					} else if array[x][y] != "B" {
// 						startW += 1
// 					}
// 				}
// 			}
// 		}
// 		count = min(startB, startW)
// 		result = min(result, count)
// 	}
// }
// print(result)

// // 1436 영화감독 숌 -1, 시간초과
// import Foundation
// let nth = Int(readLine()!)!
// var num = 666

// var result : [Int] = []
// while true {
// 	if String(num).contains("666") {
// 		result.append(num)
// 	}
// 	if result.count == nth {
// 		break
// 	}
// 	num += 1
// }
// print(result[nth-1])

// // 1436 영화감독 숌 -2, 시간초과
// import Foundation
// let nth = Int(readLine()!)!
// var num = 666
// var count = 0

// while true {
// 	if String(num).contains("666") {
// 		count += 1
// 	}
// 	if count == nth {
// 		break
// 	}
// 	num += 1
// }
// print(num)

// // 1436 영화감독 숌 -3, 40ms, 62224KB

// let nth = Int(readLine()!)!
// var num = 666
// var count = 0

// while true {
// 	var countSix = 0
// 	var value = num
// 	while value > 0 {
// 		if value%10 == 6 {
// 			countSix += 1
// 		} else {
// 			countSix = 0
// 		}
// 		if countSix == 3 {
// 			count += 1
// 			break
// 		}
// 		value /= 10
// 	}
// 	if count == nth {
// 		break
// 	}
// 	num += 1
// }
// print(num)


//// 16968 차량 번호판 1
//
//let input = readLine()!.map{String($0)}
//var result = 0
//
//if input[0] == "d" {
//	result = 10
//} else {
//	result = 26
//}
//
//for i in 0..<input.count-1 {
//	if input[i] == "d" && input[i+1] == "d" {
//		result *= 9
//	} else if input[i] == "d" && input[i+1] == "c" {
//		result *= 26
//	} else if input[i] == "c" && input[i+1] == "c" {
//		result *= 25
//	} else if input[i] == "c" && input[i+1] == "d" {
//		result *= 10
//	}
//}
//print(result)


//// 16917 양념 반 후라이드 반
//
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//let a = input[0]
//let b = input[1]
//let c = input[2]*2
//
//let x = input[3]
//let y = input[4]
//
//var price = 0
//
//if x>y {
//	price = a+b > c ? c*y + min(a,c)*(x-y) : a*x + b*y
//} else {
//	price = a+b > c ? c*x + min(b,c)*(y-x) : a*x + b*y
//}
//
//print(price)


//// 16924 십자가 찾기 -- 75588KB, 160ms
//
//var size = readLine()!.split(separator: " ").map{Int(String($0))}
//var inputArr = Array(repeating: Array(repeating: " ", count: size[1]!), count: size[0]!)
//
//for i in 0..<size[0]! {
//	inputArr[i] = readLine()!.map{String($0)}
//}
//
//var result = [String]()
//var copyInput = inputArr
//
//func checkIfCross(_ arr:[[String]], n1:Int, n2:Int, size:Int) -> Int {
//	var crossSize = size
//	if crossSize == 0 {
//		return 0
//	} else {
//		if arr[n1-crossSize][n2] == "*" && arr[n1+crossSize][n2] == "*" && arr[n1][n2-crossSize] == "*" && arr[n1][n2+crossSize] == "*" {
//			crossSize -= 1
//			return checkIfCross(arr, n1: n1, n2: n2, size: crossSize)
//		} else {
//			return -1
//		}
//	}
//}
//
//for i in 1..<size[0]!-1 {
//	for j in 1..<size[1]!-1 {
//		if inputArr[i][j] == "*" {
//			let maxCrossSize = min(min(size[0]!-1-i, i), min(size[1]!-1-j, j))
//			var crossSize = maxCrossSize // 최대한의 십자가 크기
//			var checkCross = 0 // 십자가가 있으면 카운트
//			while crossSize > 0 { // 십자가 탐색
//				if inputArr[i-crossSize][j] == "*" && inputArr[i+crossSize][j] == "*" && inputArr[i][j-crossSize] == "*" && inputArr[i][j+crossSize] == "*" {
//					if checkIfCross(inputArr, n1: i, n2: j, size: crossSize) == 0 {
//						checkCross += 1
//						for k in (1...crossSize).reversed() {
//							result.append("\(i+1) \(j+1) \(k)")
//							copyInput[i-k][j] = "."
//							copyInput[i+k][j] = "."
//							copyInput[i][j-k] = "."
//							copyInput[i][j+k] = "."
//						}
//						crossSize = 0
//					}
//				}
//				crossSize -= 1
//			}
//			if checkCross > 0 { // 현재 좌표를 기준으로 십자가가 있었다면 배열 복사본의 현재 좌표를 .으로 바꿔줌
//				copyInput[i][j] = "."
//			}
//		}
//	}
//}
//
//
//
//
//var checkStar = 0
//for i in 0..<size[0]! {
//	if copyInput[i].contains("*") {
//		checkStar += 1
//		break
//	}
//}
//
//if checkStar > 0 {
//	print(-1)
//} else {
//	print(result.count)
//	for i in 0..<result.count {
//		print(result[i])
//	}
//}

// 16932 나3곱2 - 시간초과

let size = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int64(String($0))!}

var result = [Int64]()
result.append(arr[0])

var index = 0
var loopCount = 0

while result.count != size {
	for i in 0..<arr.count {
		if arr[i] / 2 == result[index] && !result.contains(arr[i]) {
			result.append(arr[i])
			index = result.endIndex-1
		} else if arr[i] * 3 == result[index] && !result.contains(arr[i]) {
			result.append(arr[i])
			index = result.endIndex-1
		} else if arr[i] * 2 == result[index] && !result.contains(arr[i]) {
			result.insert(arr[i], at: index)
		} else if arr[i] / 3 == result[index] && !result.contains(arr[i]) {
			result.insert(arr[i], at: index)
		}
	}
	
	loopCount += 1
	if loopCount > arr.count + 1 {
		index = 0
		loopCount = 0
	}
}

print(result)


