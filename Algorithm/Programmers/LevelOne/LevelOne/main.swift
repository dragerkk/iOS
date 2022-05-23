//// 직사각형 별찍기
//
//let n = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//for _ in 0..<n[1] {
//	print(Array(repeating: "*", count: n[0]).joined())
//}


//// x만큼 간격이 있는 n개의 숫자
//
//func solution(_ x:Int, _ n:Int) -> [Int64] {
//	var arr = [Int64]()
//	for num in 1...n {
//		arr.append(Int64(x*num))
//	}
//
//	return arr
//}
//
//print(solution(0, 10))


//// 행렬의 덧셈
//
//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//	var arr : [[Int]] = Array(repeating:Array(repeating:0, count:arr1[0].count), count:arr1.count)
//
//	for i in 0..<arr1.count {
//		for j in 0..<arr1[0].count {
//			arr[i][j] = arr1[i][j] + arr2[i][j]
//		}
//	}
//	return arr
//}


//// 핸드폰 번호 가리기
//
//func solution(_ phone_number:String) -> String {
//	var num = String()
//	let count = phone_number.count
//	for i in 0..<count - 4 {
//		num += "*"
//	}
//	return num+phone_number.suffix(4)
//}


//// 하샤드 수
//
//func solution(_ x:Int) -> Bool {
//	var num = x
//	var sum = 0
//
//	while num > 0 {
//		sum += num % 10
//		num /= 10
//	}
//	return x % sum == 0
//}


//// 평균 구하기
//
//func solution(_ arr:[Int]) -> Double {
//
//	return Double(arr.reduce(0, +))/Double(arr.count)
//}


//// 콜라츠 추측
//func solution(_ num:Int) -> Int {
//	var n = num
//	var count = 0
//	while n != 1 {
//		if n % 2 == 0 {
//			n /= 2
//			count += 1
//		} else {
//			n = n * 3 + 1
//			count += 1
//		}
//	}
//	return count>500 ? -1 : count
//}


//// 최대공약수와 최소공배수
//
//func getGcd(_ n1:Int, _ n2:Int) -> Int {
//	return n1%n2 == 0 ? n2 : getGcd(n2, n1%n2)
//}
//
//func solution(_ n:Int, _ m:Int) -> [Int] {
//	let n1 = max(n, m), n2 = min(n, m)
//	let gcd = getGcd(n1, n2)
//	return [gcd, n*m/gcd]
//}


//// 짝수와 홀수
//func solution(_ num:Int) -> String {
//	return num%2==0 ? "Even" : "Odd"
//}


//// 제일 작은 수 제거하기
//
//func solution(_ arr:[Int]) -> [Int] {
//	let min = arr.min()
//	return arr.count == 1 ? [-1] : arr.filter{$0 != min}
//}


//// 정수 제곱근 판별
//
//import Foundation
//
//func solution(_ n:Int64) -> Int64 {
//	let rootNum = Double(n).squareRoot()
//	return rootNum == Double(Int64(rootNum)) ? Int64(pow(rootNum+1, 2)) : -1
//}


//// 정수 내림차순으로 배치하기
//
//func solution(_ n:Int64) -> Int64 {
//	return Int64(String(String(n).sorted(by:>)))!
//}


//// 자연수 뒤집어 배열로 만들기 -1

//func solution(_ n:Int64) -> [Int] {
//	var num = Int(n)
//	var arr = [Int]()
//
//	while num >= 1 {
//		arr.append(num%10)
//		num /= 10
//	}
//	return arr
//}


//// 자연수 뒤집어 배열로 만들기 -2
//
//func solution(_ n:Int64) -> [Int] {
//
//	return String(n).compactMap{Int(String($0))}.reversed()
////	return String(n).map{Int(String($0))!}.reversed()
//}


//// 자릿수 더하기 -1
//
//func solution(_ n:Int) -> Int
//{
//	var num = n
//	var answer:Int = 0
//
//	while num >= 1 {
//		answer += num%10
//		num /= 10
//	}
//
//	return answer
//}


//// 자릿수 더하기 -2
//
//func solution(_ n:Int) -> Int
//{
//	let arr = String(n).compactMap{ Int(String($0)) }
//	return arr.reduce(0, +)
//
//}
//


//
