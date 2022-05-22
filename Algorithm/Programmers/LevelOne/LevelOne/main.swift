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


// 콜라츠 추측

