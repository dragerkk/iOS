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

// 1436 영화감독 숌 -3, 40ms, 62224KB

let nth = Int(readLine()!)!
var num = 666
var count = 0

while true {
	var countSix = 0
	var value = num 
	while value > 0 {
		if value%10 == 6 {
			countSix += 1
		} else {
			countSix = 0
		}
		if countSix == 3 {
			count += 1
			break
		}
		value /= 10
	}
	if count == nth {
		break
	}
	num += 1
}
print(num)