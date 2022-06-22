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


//// 나누어 떨어지는 숫자 배열
//
//func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
//	var result = [Int]()
//	for i in 0..<arr.count {
//		if arr[i] % divisor == 0 {
//			result.append(arr[i])
//		}
//	}
//	result.sort()
//	return result.count == 0 ? [-1] : result
//}

//// 2018 KAKAO BLIND RECRUITMENT 다트게임 -1, 0.06~0.09ms
//import Foundation
//
//func solution(_ dartResult:String) -> Int {
//	var str = dartResult.map{String($0)}
//
//	var result : [String] = ["","",""]
//	var index = 0
//	result[0] = str[0]
//
//	for i in 1..<str.count {
//		if str[i] == "D" || str[i] == "S" || str[i] == "T" || str[i] == "*" || str[i] == "#" {
//			result[index] += str[i]
//		} else if str[i] == "0" {
//			if result[index].count == 1 {
//				result[index] += str[i]
//			} else {
//				index += 1
//				result[index] = str[i]
//			}
//		}  else {
//			index += 1
//			result[index] = str[i]
//		}
//}
//
//	var sumArr : [Int] = []
//
//	for i in 0..<result.count {
//		let resultArr = result[i].map{String($0)}
//		var sum = Int(resultArr[0])!
//
//		for j in 1..<resultArr.count {
//			if resultArr[j] == "0" {
//				sum *= 10
//			} else if resultArr[j] == "D" {
//				sum = Int(pow(Double(sum), 2))
//			} else if resultArr[j] == "T" {
//				sum = Int(pow(Double(sum), 3))
//			} else if resultArr[j] == "S" {
//				continue
//			} else if resultArr[j] == "*" {
//				if i == 0 {
//					sum *= 2
//				} else {
//					sumArr[i-1] *= 2
//					sum *= 2
//				}
//			} else if resultArr[j] == "#" {
//				sum *= (-1)
//			}
//		}
//	sumArr.append(sum)
//	}
//
//
//	return sumArr.reduce(0, +)
//}
//
//print(solution("1S2D*3T"))


//// 2018 KAKAO BLIND RECRUITMENT 다트게임-2, 0.17~0.19ms
//func solution(_ dartResult: String) -> Int {
//
//	let numList = dartResult.split(whereSeparator: { $0.isLetter || $0 == "*" || $0 == "#"})
//	let letterList = dartResult.split(whereSeparator: { $0.isNumber })
//
//	var result = 0
//
//	for (i, (number, letter)) in zip(numList, letterList).enumerated() {
//
//		var score = 0
//
//		if let num = Int(number) {
//			score = letter.contains("D") ? num*num : letter.contains("T") ? num*num*num : num
//		}
//
//		if letter.contains("*") {
//			score *= 2
//		} else if letter.contains("#") {
//			score *= (-1)
//		}
//
//		if i != 2 {
//			if letterList[i+1].contains("*") {
//				score *= 2
//			}
//		}
//
//		result += score
//	}
//
//	return result
//}
//
//print(solution("1S2D*3T"))


//// 가운데 글자 가져오기
//
//func solution(_ s:String) -> String {
//	if s.count % 2 == 0 {
//		return String(Array(s)[s.count/2-1...s.count/2])
//	} else {
//		return String(Array(s)[s.count/2])
//	}
//}

//// 2018 카카오 블채 비밀지도
//func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
//	var input1 = arr1
//	var input2 = arr2
//	var num1 = [Int]()
//	var num2 = [Int]()
//	var answer: [String] = Array(repeating: "", count: n)
//
//	for i in 0..<n {
//		for _ in 0..<n {
//			num1.insert(input1[i]%2, at:0)
//			num2.insert(input2[i]%2, at:0)
//			input1[i]/=2
//			input2[i]/=2
//		}
//		for j in 0..<n {
//			if num1[j] == 1 || num2[j] == 1 {
//				answer[i] += "#"
//			} else {
//				answer[i] += " "
//			}
//		}
//	}
//	return answer
//}


//// 부족한 금액 계산하기
//
//import Foundation
//
//func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
//	var sum = 0
//
//	for i in 1...count {
//		sum += i * price
//	}
//
//	return sum > money ? Int64(sum-money) : 0
//}


//// 나머지가 1이 되는 수 찾기
//import Foundation
//
//func solution(_ n:Int) -> Int {
//	if n == 3 {
//		return 2
//	}
//	for i in 2..<n {
//		if n % i == 1 {
//			return i
//		}
//	}
//	return 0
//}


//// 부족한 금액 계산하기
//import Foundation
//
//func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
//	var sum = 0
//
//	for i in 1...count {
//		sum += i * price
//	}
//
//	return sum > money ? Int64(sum-money) : 0
//}


//// 최소 직사각형
//import Foundation
//
//func solution(_ sizes:[[Int]]) -> Int {
//	var maxW = 0
//	var maxH = 0
//	for i in 0..<sizes.count {
//		let max = sizes[i].max()!
//		let min = sizes[i].min()!
//		if maxW < max {
//			maxW = max
//		}
//		if maxH < min {
//			maxH = min
//		}
//	}
//	return maxH*maxW
//}


//// 2016년
//func solution(_ a:Int, _ b:Int) -> String {
//	let dict = [1:31, 2:29, 3:31, 4:30, 5:31, 6:30, 7:31, 8:31, 9:30, 10:31, 11:30, 12:31]
//	let dayWeek = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
//
//	var day = 0
//	for i in 1..<a {
//		day += dict[i]!
//	}
//	day += b
//	return day%7==0 ? dayWeek[6] : dayWeek[day%7-1]
//}


//// 두 개 뽑아서 더하기
//import Foundation
//
//func solution(_ numbers:[Int]) -> [Int] {
//	var result : Set<Int> = []
//
//	for i in 0..<numbers.count {
//		for j in 1..<numbers.count {
//			if i != j {
//				result.insert(numbers[i]+numbers[j])
//			}
//		}
//	}
//	return result.sorted()
//}


//// 예산
//import Foundation
//
//func solution(_ d:[Int], _ budget:Int) -> Int {
//	var num = d.sorted()
//	var sum = 0
//	var count = 0
//
//	for i in 0..<num.count {
//		if sum >= budget {
//			break
//		} else {
//			sum += num[i]
//			count += 1
//		}
//	}
//	return sum <= budget ? count : count-1
//}


//// 3진법 뒤집기
//import Foundation
//
//func solution(_ n:Int) -> Int {
//	return Int(String(String(n, radix: 3).reversed()), radix:3)!
//}

//
//// 약수의 개수와 덧셈
//import Foundation
//
//func solution(_ left:Int, _ right:Int) -> Int {
//	var sum = 0
//	for i in left...right {
//		var count = 0
//		for j in 1...i {
//			if i % j == 0 {
//				count+=1
//			}
//		}
//		if count % 2 == 0 {
//			sum += i
//		} else {
//			sum -= i
//		}
//	}
//	return sum
//}


//// 실패율
//import Foundation
//
//func solution(_ N:Int, _ stages:[Int]) -> [Int] {
//
//	var userLevel = stages.sorted()
//	var stageCleared = Array(repeating: 0, count: N+1)
//
//	for i in 0..<userLevel.count {
//		if userLevel[i] == 1 {
//		} else {
//			for j in 1..<userLevel[i] {
//				stageCleared[j] += 1
//			}
//		}
//	}
//
//	var dict : [Int:Int] = [:]
//	for i in 0...N {
//		dict[i] = stageCleared[i]
//	}
//
//	var failRate : [Int:Double] = [:] // stage : failRate
//	stageCleared[0] = stages.count
//
//	for i in 1...N {
//		if stageCleared[i-1] == 0 {
//			failRate[i] = 0
//		} else {
//			failRate[i] = (1 - (Double(stageCleared[i])) / Double(stageCleared[i-1]))
//		}
//	}
//
//
//	let result = failRate.sorted {
//		if $0.1 == $1.1 {
//			return $0 < $1
//		} else {
//			return $0.1 > $1.1
//		}
//	}
//
//	var returnArr : [Int] = []
//	for i in 0..<result.count {
//		returnArr.append(result[i].key)
//	}
//	return returnArr
//}


//// 체육복
//import Foundation
//
//func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
//	var setZero : Set<Int> = Set(lost).subtracting(reserve)
//var setTwo : Set<Int> = Set(reserve).subtracting(lost)
//
//var haveZero = setZero.sorted()
//var haveTwo = setTwo.sorted()
//
//var count = n - haveZero.count
//
//for i in 0..<haveZero.count {
//	for j in 0..<haveTwo.count {
//		if haveZero[i] - 1 == haveTwo[j] || haveZero[i] + 1 == haveTwo[j] {
//			count += 1
//			haveTwo.remove(at: j)
//			break
//		}
//	}
//}
//	return count
//}


//// 모의고사
//import Foundation
//
//func solution(_ answers:[Int]) -> [Int] {
//	let n = answers.count
//	var arr1 = [1,2,3,4,5]
//	var arr2 = [2,1,2,3,2,4,2,5]
//	var arr3 = [3,3,1,1,2,2,4,4,5,5]
//
//	var dict = [1 : 0, 2 : 0, 3 : 0]
//
//	for i in 0..<answers.count {
//		if answers[i] == arr1[i%5] {
//			dict[1]! += 1
//		}
//		if answers[i] == arr2[i%8] {
//			dict[2]! += 1
//		}
//		if answers[i] == arr3[i%10] {
//			dict[3]! += 1
//		}
//	}
//
//	var max = dict.values.max()!
//
//	for i in 1...3 {
//		if dict[i] != max {
//			dict[i] = nil
//		}
//	}
//
//	var sortedDict = dict.sorted {
//		if $0.1 == $1.1 {
//			return $0 < $1
//		} else {
//			return $0.1 > $1.1
//		}
//	}
//
//	var result = [Int]()
//
//	for i in sortedDict {
//		result.append(i.key)
//	}
//		return result
//}


//// K번째 수
//
//func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//	let caseNum = commands.count
//	var answer = [Int]()
//	for i in 0..<caseNum {
//		var result = array
//		let count = result.count
//		result.removeFirst(commands[i][0]-1)
//		result.removeLast(count-commands[i][1])
//		result.sort()
//		answer.append(result[commands[i][2]-1])
//	}
//	return answer
//}
//
//print(solution([1, 5, 2, 6, 3, 7, 4]	, [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))
//// [5,6,3]


//// 소수 만들기
//
//func solution(_ nums:[Int]) -> Int {
//
//	var prime = [2]
//	var answer = [Int]()
//
//	for i in 3...3000 {
//		if isPrime(i) {
//			prime.append(i)
//		}
//	}
//
//	for i in 0..<nums.count {
//		for j in i+1..<nums.count {
//			for k in j+1..<nums.count {
//				if i != j && j != k && i != k {
//					let sum = nums[i]+nums[j]+nums[k]
//					if prime.contains(sum) {
//						answer.append(sum)
//					}
//				}
//			}
//		}
//	}
//	return answer.count
//}
//
//func isPrime(_ n:Int) -> Bool {
//
//	for i in 2..<n {
//		if n%i == 0 {
//			return false
//		}
//	}
//	return true
//}
//
//print(solution([1,2,7,6,4]))
//print(solution([1,2,3,4]))


//// 내적
//
//import Foundation
//
//func solution(_ a:[Int], _ b:[Int]) -> Int {
//
//	let n = a.count
//	var sum = 0
//	for i in 0..<n {
//		sum += a[i]*b[i]
//	}
//
//	return sum
//}


//// 음양 더하기
//
//import Foundation
//
//func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
//	let n = absolutes.count
//	var sum = 0
//
//	for i in 0..<n {
//		if signs[i] {
//			sum += absolutes[i]
//		} else {
//			sum -= absolutes[i]
//		}
//	}
//
//	return sum
//}
//
//print(solution([4,7,12], [true,false,true]))


//// 음양 더하기 -2
//
//import Foundation
//
//func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
//	return (0..<absolutes.count).map{ signs[$0] ? absolutes[$0] : -absolutes[$0]}.reduce(0, +)
//}
//
//print(solution([4,7,12], [true,false,true]))


//// 퀸
//
//import Foundation
//
//func solution(_ n:Int) -> Int {
//	var count = 0
//
//	for i in 0..<n {
//		var index : [Int:Bool] = [:]
//
//			
//			if j != i && j != i-1 && j != i+1 {
//				index[j] = true
//			}
//		}
//
//		print(index)
////		if index.count == n-1 {
////			count += 1
////		}
//	
//	return count
//}
//
//func queen(_ n:Int) -> Bool {
//	for i in 0..<n {
//		for j in 0..<n {
//			
//		}
//	}
//}
//	
//print(solution(4))
//


//// 크레인 인형뽑기 게임
//import Foundation
//
//func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
//
//	var doll = board
//	let n = doll[0].count
//	var result = [Int]()
//
//	var sum = 0
//
//	for i in 0..<moves.count {
//		let index = moves[i]-1
//		for j in 0..<n {
//			if doll[j][index] != 0 {
//				result.append(doll[j][index])
//				doll[j][index] = 0
//				break
//			}
//		}
//		if result.count >= 2 && result[result.count-1] == result[result.count-2] {
//			sum += 2
//			result.removeLast(2)
//		}
//	}
//	return sum
//}
//
//print(solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]))



//// 카카오20인턴 - 키패드 누르기
//
//import Foundation
//
//func solution(_ numbers:[Int], _ hand:String) -> String {
//
//	let dictKeypad : [String:[Int]] = [
//		"1":[0,0], "4":[0,1], "7":[0,2], "*":[0,3],
//		"2":[1,0], "5":[1,1], "8":[1,2], "0":[1,3],
//		"3":[2,0], "6":[2,1], "9":[2,2], "#":[2,3]
//	]
//	var leftPos = dictKeypad["*"]!
//	var rightPos = dictKeypad["#"]!
//
//	var result = ""
//
//	for i in 0..<numbers.count {
//		let num = String(numbers[i])
//		let pos = dictKeypad[num]!
//
//		if dictKeypad[num]![0] == 0 {
//			result += "L"
//			leftPos = pos
//		} else if dictKeypad[num]![0] == 2 {
//			result += "R"
//			rightPos = pos
//		} else {
//			if distance(leftPos, pos) < distance(rightPos, pos) {
//				result += "L"
//				leftPos = pos
//			} else if distance(rightPos, pos) < distance(leftPos, pos) {
//				result += "R"
//				rightPos = pos
//			} else {
//				if hand == "right" {
//					result += "R"
//					rightPos = pos
//				} else {
//					result += "L"
//					leftPos = pos
//				}
//			}
//		}
//	}
//
//	return result
//}
//
//
//func distance(_ n1:[Int], _ n2:[Int]) -> Int {
//	var x = n1[0]-n2[0]
//	var y = n1[1]-n2[1]
//	x = x < 0 ? -x : x
//	y = y < 0 ? -y : y
//	let dis = x+y
//
//	return dis
//}
//


// 21카카오 인턴 숫자 문자열과 영단어
//
//import Foundation
//
//func solution(_ s:String) -> Int {
//	let dict = [
//		"zero":0, "one":1, "two":2, "three":3, "four":4, "five":5,
//		"six":6, "seven":7, "eight":8, "nine":9
//	]
//
//	var result = ""
//	var temp = ""
//
//	for i in s {
//		if i.isLetter {
//			temp += String(i)
//		} else {
//			result += String(i)
//		}
//
//		if dict[temp] != nil {
//			result += String(dict[temp]!)
//			temp = ""
//		}
//	}
//
//	return Int(result) ?? 0
//}


// 21카카오 인턴 숫자 문자열과 영단어 -2, replacingOccurrences 사용
//import Foundation
//
//var str = "23fourfive6one"
//let arr = ["zero","one","two","three","four","five","six","seven","eight","nine"]
//
//for i in 0..<arr.count {
//	str = str.replacingOccurrences(of: arr[i], with: String(i))
//}
//
//print(Int(str)!)
//
