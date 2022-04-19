// // 1712 손익분기점
// let cost = readLine()!.split(separator: " ").map{Int(String($0))!}
// var quantity : Int
// if cost[1] == cost[2] || cost[1] > cost[2] {
// 	print(-1)
// } else {
// 	quantity = cost[0]/(cost[2]-cost[1])+1
// 	print(quantity)
// }

// // 2292 벌집
// let input = Int(readLine()!)!
// var roomNum = 1
// for i in 1...input {
// 	if input == 1 {
// 		print(1)
// 		break
// 	}
// 	roomNum += 6*i
// 	if input <= roomNum {
// 		print(i+1)
// 		break
// 	}
// }

// // 1193 분수찾기 -1, 304ms, 398108KB
// 분자/분모 배열을 생성, 하나씩 숫자를 넣은 후 input에 해당하는 index 값을 출력

// let input = Int(readLine()!)!
// var sum = 0
// var a:[Int] = [], b:[Int] = []

// for i in 1...input {
// 	if i % 2 != 0 {
// 		for j in (1...i).reversed() {
// 			a.append(j)
// 		}
// 		for j in (1...i) {
// 			b.append(j)
// 		}
// 		sum += i
// 	} else {
// 		for j in (1...i) {
// 			a.append(j)
// 		}
// 		for j in (1...i).reversed() {
// 			b.append(j)
// 		}
// 		sum += i
// 	}
// 	if sum >= input {
// 		break
// 	}
// }
// print(a[input-1], "/", b[input-1], separator: "")

// // 1193 분수찾기 -2, 8ms, 62224KB
// // https://codesyun.tistory.com/58
// // 인덱스 값이 몇 번째 대각선(i)에 들어가는지 확인하기 위해 대각선을 증가시켜가며 input에서 빼나간다. input이 i보다 작아지는 순간의 i가 input이 들어가게 될 대각선의 줄 수가 된다.
 
// var input = Int(readLine()!)!
// var count = 1
// while input > count {
// 	input -= count
// 	count += 1
// }
// if count % 2 != 0 {
// 	print("\(count-input+1)/\(input)")
// } else {
// 	print("\(input)/\(count-input+1)")	
// }

// // 2869 달팽이는 올라가고 싶다 -1, 시간초과 

// let input = readLine()!.split(separator: " ").map{Int(String($0))!}
// var day = 0
// var height = 0
// while height <= input[2] {
// 	day += 1
// 	height += input[0]
// 	if height >= input[2] {
// 		break
// 	} else {
// 		height -= input[1]
// 	}
// }
// print(day)

// // 2869 달팽이는 올라가고 싶다 -2, 8ms
// let input = readLine()!.split(separator: " ").map{Int(String($0))!}
// let height = input[2]
// let up = input[0]
// let down = input[1]

// let day = (height-down)/(up-down)

// if (height-down)%(up-down) != 0 {
// 	print(day+1)
// } else {
// 	print(day)
// }

// // 10250 ACM 호텔 , 8ms
// let testNumber = Int(readLine()!)!

// for _ in 1...testNumber {
// 	let input = readLine()!.split(separator: " ").map{Int(String($0))!}
// 	let h = input[0]
// 	let w = input[1]
// 	let n = input[2]

// 	let floor = (n % h == 0) ? h : n%h
// 	let roomNum = (n % h == 0) ? n/h : n/h + 1

// 	if roomNum >= 10 {
// 		print("\(floor)\(roomNum)")
// 	} else {
// 		print("\(floor)0\(roomNum)")
// 	}
// }

// // 2775 부녀회장이 될테야
// let caseNum = Int(readLine()!)!
// var result = 0
// for _ in 1...caseNum {
// 	let k = Int(readLine()!)!
// 	let n = Int(readLine()!)!
// 	var array = Array(1...n)
// 	var tempArray = array
// 	for _ in 1...k {
// 		for i in 0..<n {
// 			for j in 0..<i {
// 				tempArray[i] += array[j]
// 			}
// 		}
// 		array = tempArray
// 		}
// 	print(array[n-1])
// }

// // 2839 설탕 배달
// var input = Int(readLine()!)!

// var count = 0

// while true {
// 	if input%5 == 0 {
// 		count += input/5
// 		print(count)
// 		break
// 	}
// 	input -= 3
// 	count += 1
// 	if input < 0 {
// 		print(-1)
// 		break
// 	}
// }

// // 10757 큰 수 A+B -1, 런타임 에러

// let input = readLine()!.split(separator: " ")
// var num1 = input[0].map{Int(String($0))!}
// var num2 = input[1].map{Int(String($0))!}

// var short:[Int] = []
// var long:[Int] = []

// if num1.count > num2.count {
// 	short = num2
// 	long = num1
// } else {
// 	short = num1
// 	long = num2
// } 

// var result : [Int] = []
// var up = 0
// var count = short.count

// for _ in 1...count {
// 	let sum = short.last! + long.last!
// 	if (up + sum) >= 10 {
// 		result.insert((up+sum)%10, at:0)
// 		up = 1
// 	} else {
// 		result.insert(up + sum, at:0)
// 		up = 0
// 	}
// 	long.removeLast()
// 	short.removeLast()
// }

// if long.count != 0 {
// 	var remain = ""
// 	_ = long.map{remain = remain + "\($0)"}
// 	var remainInt = Int(remain)!
// 	if up == 1 {
// 		remainInt += 1
// 	}
// 	if short.count == long.count {
// 		result.insert(remainInt + up, at:0)
// 	} else {
// 		result.insert(remainInt, at:0)
// 	}
// } else if long.count == 0 && up == 1 {
// 	result.insert(1, at:0)	
// }


// for i in 0..<result.count {
// 	print(result[i],terminator:"")
// }
// // print("")

// // 10757 큰 수 A+B -2, 16ms, 62732KB


// let input = readLine()!.split(separator: " ").map{String($0)}
// var num1 = Array(input[0].reversed()).map{Int(String($0))!}
// var num2 = Array(input[1].reversed()).map{Int(String($0))!}

// var result = Array(repeating: 0, count: (num1.count > num2.count ? num1.count : num2.count))
// var count = 0
// if num1.count > num2.count {
// 	count = num2.count
// } else {
// 	count = num1.count
// }

// for i in 0..<num1.count {
// 	result[i] += num1[i]
// }
// for i in 0..<num2.count {
// 	result[i] += num2[i]
// }

// for i in 0..<result.count-1 {
// 	if result[i] >= 10 {
// 		result[i] = result[i]%10
// 		result[i+1] += 1
// 	}
// }

// if result[result.count-1] >= 10 {
// 	result[result.count-1] = result[result.count-1]%10
// 	result.append(1)
// }

// var resultNum = result.reversed().reduce("", {$0+String($1)})
// print(resultNum)


// 1011 Fly me to the Alpha Centauri, 12ms, 62232KB

let caseNum = Int(readLine()!)!

for _ in 1...caseNum {
	var count = 0
	var move = 1
	var distance = 0
	let input = readLine()!.split(separator: " ").map{Int(String($0))!}
	distance = input[1]-input[0]
	while distance/2 >= move {
		distance -= move * 2
		move += 1
		count += 2
	}
	if distance >= 1 && distance <= move {
		count += 1
	} else if distance > move {
		count += 2
	}
	print(count)
}