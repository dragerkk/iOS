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


//// 이상한 문자 만들기
//
//func solution(_ s:String) -> String {
//
//	var n = 0
//	var result = String()
//
//	for i in s {
//		if n % 2 == 0 {
//			result.append(i.uppercased())
//		} else {
//			result.append(i.lowercased())
//		}
//		n += 1
//		if i == " " {
//			n = 0
//		}
//	}
//	return result
//}


//// 약수의 합 -1
//
//func solution(_ n:Int) -> Int {
//	var sum = 0
//	if n == 0 {
//		return 0
//	}
//	for i in 1...n {
//		if n % i == 0 {
//			sum += i
//		}
//	}
//	return sum
//}


// 약수의 합 -2

//func solution(_ n:Int) -> Int {
//	return n != 0 ? (1...n).filter{n % $0 == 0}.reduce(0, +) : 0
//}


//// 시저 암호
//
//func solution(_ s:String, _ n:Int) -> String {
//	var str = Array(s)
//	let upper : [Character] = Array("abcdefghijklmnopqrstuvwxyz".uppercased())
//	let lower : [Character] = Array("abcdefghijklmnopqrstuvwxyz")
//
//	for i in 0..<str.count {
//		if str[i] == " " {
//			continue
//		}
//		if upper.contains(str[i]) {
//			let index = upper.firstIndex(of: str[i])! + n
//			str[i] = upper[index%26]
//		} else if lower.contains(str[i]) {
//			let index = lower.firstIndex(of: str[i])! + n
//			str[i] = lower[index%26]
//
//		}
//	}
//
//	return String(str)
//}


//// 문자열을 정수로 바꾸기
//
//func solution(_ s:String) -> Int {
//	var arr = Array(s)
//	var sign = 1
//
//	if arr[0] == "-" {
//		sign = -1
//		arr.remove(at:0)
//	} else if arr[0] == "+" {
//		arr.remove(at:0)
//	}
//
//	return Int(String(arr))! * sign
//}


////// 수박수박수박수박수박수? -1
////
//func solution(_ n:Int) -> String {
//	var str = String()
//	for i in 0..<n {
//		if i%2 == 0 {
//			str.append("수")
//		} else {
//			str.append("박")
//		}
//	}
//	return str
//}
//
//
//// 수박수박수박수박수박수? -2
//
//func solution(_ n:Int) -> String {
//	return (0...n).map{$0 % 2 == 0 ? "수" : "박"}.reduce("", +)
//}


// 소수 찾기 -1

//func solution(_ n:Int) -> Int {
//	if n == 2 {
//		return 1
//	} else if n == 3 {
//		return 2
//	}
//	var prime = Array(repeating: 1, count: n+1)
//	var count = 0
//
//	prime[0] = 0
//	prime[1] = 0
//
//	for i in 2...Int(Double(n).squareRoot()) {
//		for j in stride(from: i+i, through: n, by: i) {
//			prime[j] = 0
//		}
//	}
//
//	for i in 0...n {
//		if prime[i] != 0 {
//			count += 1
//		}
//	}
//
//	return count
//}


// 소수 찾기 -2 ----- 빠름, 소수 '찾기' 에서는 유용할 듯 함.

//func solution(_ n:Int) -> Int {
//	var notPrime = Array(repeating: false, count: n+1)
//
//	notPrime[0] = true
//	notPrime[1] = true
//
//	var count = 0
//
//	for i in 2...n {
//		if notPrime[i] == false {
//			count += 1
//		}
//		if n/i >= i {
//			for j in 2...n/i {
//				notPrime[i*j] = true
//			}
//		}
//	}
//	return count
//}


//// 문자열 다루기 기본 -1
//
//func solution(_ s:String) -> Bool {
//
//	if s.count != 4 && s.count != 6 {
//		return false
//	}
//	for i in s {
//		if i < "0" || i > "9" {
//			return false
//		}
//	}
//
//	return true
//}


//// 문자열 다루기 기본 -2
//
//func solution(_ s:String) -> Bool {
//	return ( Int(s) != nil && (s.count == 4 || s.count == 6) ) ? true : false
//}


//// 문자열 내 p와 y의 개수
//
//func solution(_ s:String) -> Bool {
//	let p = s.filter{$0 == "p" || $0 == "P"}
//	let y = s.filter{$0 == "y" || $0 == "Y"}
//
//
//	return p.count==y.count ? true : false
//}


//// 문자열 내 마음대로 정렬하기
//
//func solution(_ strings:[String], _ n:Int) -> [String] {
//	let index = strings[0].index(strings[0].startIndex, offsetBy:n)
//
//	let result = strings.sorted(by: {(s1, s2) in
//		if s1[index] == s2[index] {
//			return s1 < s2
//		} else {
//			return s1[index] < s2[index]
//		}
//	})
//
//	return result
//}


// 두 정수 사이의 합 -1

//func solution(_ a:Int, _ b:Int) -> Int64 {
//	if a == b {
//		return Int64(a)
//	}
//
//	let n1 = min(a,b)
//	let n2 = max(a, b)
//
//	var sum = 0
//	for i in n1...n2 {
//		sum += i
//	}
//	return Int64(sum)
//}


//// 두 정수 사이의 합 -2
//
//func solution(_ a:Int, _ b:Int) -> Int64 {
//	let n1 = min(a, b)
//	let n2 = max(a, b)
//	let sum = (n2-n1+1) * (n1+n2) / 2
//	return Int64(sum)
//}



