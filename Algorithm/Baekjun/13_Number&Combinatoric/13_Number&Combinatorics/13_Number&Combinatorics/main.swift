//
//  main.swift
//  13_Number&Combinatorics
//
//  Created by 강주원 on 2022/04/20.
//

import Foundation
//
//// 5086 배수와 약수 -1, 멍청하게 작성한 코드
//
//while true {
//	let num = readLine()!.split(separator: " ").map{Float(String($0))!}
//	if num == [0,0] {
//		break
//	}
//	let divNum = num[0]/num[1]
//	let divNum2 = num[1]/num[0]
//
//	if divNum > 1 {
//		if divNum == Float(Int(divNum)) {
//			print("multiple")
//		} else {
//			print("neither")
//		}
//	} else if divNum < 1 {
//		if divNum2 == Float(Int(divNum2)) {
//			print("factor")
//		} else {
//			print("neither")
//		}
//	} else {
//		print("neither")
//	}
//}

//// 5086 배수와 약수 -2 , 조금 덜 멍청하게 작성한 듯..
//
//while true {
//	let num = readLine()!.split(separator: " ").map{Int(String($0))!}
//	if num == [0,0] {
//		break
//	}
//	let remainder1 = num[0]%num[1]
//	let remainder2 = num[1]%num[0]
//
//	if num[0] > num[1] {
//		if remainder1 == 0 {
//			print("multiple")
//		} else {
//			print("neither")
//		}
//	} else if num[0] < num[1] {
//		if remainder2 == 0 {
//			print("factor")
//		} else {
//			print("neither")
//		}
//	} else { // 두 수가 같을 경우...
//		print("neither")
//	}
//}
//
//// 5086 배수와 약수 -3, 드디어 안멍청하게 작성...
//
//while true {
//	let num = readLine()!.split(separator: " ").map{Int(String($0))!}
//	if num == [0,0] {
//		break
//	}
//	if num[0] % num[1] == 0 {
//		print("multiple")
//	} else if num[1] % num[0] == 0 {
//		print("factor")
//	} else {
//		print("neither")
//	}
//}

//// 1037 약수
//
//let n = Int(readLine()!)!
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//print(input.min()!*input.max()!)


//// 2609 최대공약수와 최소공배수
//
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//var a = input.max()!, b = input.min()!
//
//var res = 0
//var gcd = 0
//var lcm = a * b
//
//while true {
//	res = a % b
//	if res == 0 {
//		gcd = b
//		break
//	} else {
//		a = b
//		b = res
//	}
//}
//
//lcm /= gcd
//print(gcd)
//print(lcm)


//// 1934 최소공배수
//
//let caseNum = Int(readLine()!)!
//
//for _ in 1...caseNum {
//	let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//	print(getLcm(input.max()!, input.min()!))
//
//	func getGcd (_ a:Int, _ b:Int) -> Int {
//		return a%b==0 ? b : getGcd(b, a%b)
//	}
//
//	func getLcm (_ a:Int, _ b:Int) -> Int {
//		return (a*b)/getGcd(a, b)
//	}
//}

//// 2981 검문 -1, 시간초과 ㅠㅠㅠㅠㅠㅠ
//
//let caseNum = Int(readLine()!)!
//var arr : [Int] = []
//var result : [Int] = []
//
//for _ in 1...caseNum {
//	arr.append(Int(readLine()!)!)
//}
//
//for i in 2..<arr.min()! {
//	let res = arr.min()! % i
//	let filter = arr.filter { $0 % i == res }
//	if arr.count == filter.count {
//		result.append(i)
//	}
//}
//print(result.map{String($0)}.joined(separator: " "))


//// 2981 검문 -2
//
//let num = Int(readLine()!)!
//var arr : [Int] = []
//
//for _ in 1...num {
//	arr.append(Int(readLine()!)!)
//}
//arr.sort()
//var gcd = arr[1]-arr[0]
//
//for i in 1..<arr.count-1 {
//	gcd = getGcd(gcd, arr[i+1]-arr[i])
//} // gcd 구하기
//
//// ------------------ 시간초과를 극복하기 위해....... 에라토스테네스의 체
//var n = Int(Float(gcd).squareRoot())
//var resultSet : Set<Int> = []
//var result : [Int] = []
//for j in 1...n {
//	if gcd%j == 0 {
//		resultSet.insert(j)
//		resultSet.insert(gcd/j)
//	}
//} // gcd 약수 출력
//result = Array(resultSet)
//result.sort()
//result.removeFirst()
//
//print(result.map{String($0)}.joined(separator: " "))
//// ------------------------------
//
//func getGcd(_ a:Int, _ b:Int) -> Int {
//	return a%b==0 ? b : getGcd(b, a%b)
//}
//


//// 3036 링
//
//let n = Int(readLine()!)!
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//var gcd = 0
//
//for i in 1..<input.count {
//	gcd = getGcd(input[0], input[i])
//	print("\(input[0]/gcd)/\(input[i]/gcd)")
//}
//
//func getGcd (_ a:Int, _ b:Int) -> Int{
//	a%b==0 ? b : getGcd(b, a%b)
//}


//// 11050 이항계수1
//
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//let result = getFactorial(input[0]) / (getFactorial(input[1])*getFactorial(input[0]-input[1]))
//print(result)
//
//func getFactorial (_ num:Int) -> Int {
//	if num <= 1 {
//		return 1
//	}
//	return num * getFactorial(num-1)
//}


//// 11051 이항계수2 -1, factorial 이용, 런타임에러
//// 정확한 원인은 모르지만 N이 1000까지 올 수 있기 때문에 수가 너무 커져서 오버플로우 발생하는 듯함. 팩토리얼을 사용한 방법으로는 무리인 것으로 보임
//
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//var result = getFactorial(input[0]) / (getFactorial(input[1])*getFactorial(input[0]-input[1]))
//
//print(result%10007)
//
//func getFactorial (_ num:Int) -> Int {
//	if num <= 1 {
//		return 1
//	}
//	return num * getFactorial(num-1)
//}

//
//// 11051 이항계수2 -2, 파스칼의 삼각형 이용
//
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: input[0]+1), count: input[0]+1)
//var result = 0
//
//for i in 1...input[0] {
//	for j in 0...input[0] {
//		if j == 0 || j == i {
//			arr[i][j] = 1
//		} else {
//			arr[i][j] = (arr[i-1][j-1] + arr[i-1][j])%10007 // 10007로 나눈 나머지 값을 배열에 넣어야 오버플로우가 발생하지 않는 듯.
//		}
//	}
//}
//
//print(arr[input[0]][input[1]])


//// 1010 다리놓기, 파스칼의 삼각형 이용
//
//let caseNum = Int(readLine()!)!
//var resultArr = Array(repeating: Array(repeating: 0, count: 31), count: 31)
//
//for _ in 1...caseNum {
//	let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//	print(getCombination(input[1], input[0]))
//}
//
//func getCombination (_ a:Int, _ b:Int) -> Int {
//
//	if a == b || b == 0 {
//		return 1
//	}
//	if resultArr[a][b] != 0 { // 이 부분이 중요, 없으면 시간초과 : 이미 탐색했던 경우는 바로 반환함.
//		return resultArr[a][b]
//	}
//
//	resultArr[a][b] = getCombination(a-1, b-1) + getCombination(a-1, b)
//	return resultArr[a][b]
//}
//


//// 9375 패션왕 신해빈
//
//let caseNum = Int(readLine()!)!
//
//for _ in 1...caseNum {
//	var dictArr = [String: [String]]()
//	let clothNum = Int(readLine()!)!
//	if clothNum == 0 {
//		print(0)
//		continue
//	}
//	var result = 1
//	for _ in 1...clothNum {
//		let input = readLine()!.split(separator: " ").map{String($0)}
//
//		if dictArr.keys.contains(input[1]) {
//			dictArr[input[1]]?.append(input[0])
//		} else {
//			dictArr[input[1]] = [input[0]]
//		}
//	}
//	for (_, value) in dictArr {
//		result *= (value.count+1)
//	}
//	print(result-1)
//}


