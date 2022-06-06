//import Foundation
//
//// 9095 : DP - 1,2,3 더하기
////f(n) = f(n-1) + f(n-2) + f(n-3)
////f(1) = 1, f(2) = 2, f(3) = 4
//
//let caseNum = Int(readLine()!)!
//var dp = Array(repeating: 0, count: 12)
//dp[1] = 1
//dp[2] = 2
//dp[3] = 4
//for i in 4...11 {
//	dp[i] = dp[i-1]+dp[i-2]+dp[i-3]
//}
//
//for _ in 1...caseNum {
//	let num = Int(readLine()!)!
//	print(dp[num])
//}


//// 2747 피보나치 수
//let num = Int(readLine()!)!
//var dp = Array(repeating: 0, count: num+1)
//dp[0] = 0
//dp[1] = 1
//if num > 1 {
//	for i in 2...num {
//		dp[i] = dp[i-1] + dp[i-2]
//	}
//}
//print(dp[num])


//// 1932 정수 삼각형
//
//let line = Int(readLine()!)!
//var arr = [[Int]]()
//for _ in 0..<line {
//	arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//
//for i in 1..<line {
//	for j in 0..<i+1 {
//		if j == 0 {
//			arr[i][j] += arr[i-1][j]
//		} else if j == i {
//			arr[i][j] += arr[i-1][j-1]
//		} else {
//			arr[i][j] += max(arr[i-1][j-1], arr[i-1][j])
//		}
//	}
//}
//
//print(arr[line-1].max()!)


//// 1149 - RGB 거리 -1,
////
//let start = CFAbsoluteTimeGetCurrent()
//let num = Int(readLine()!)!
//var dp = [[Int]]()
//for _ in 1...num {
//	dp.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//
//for i in 1..<num {
//	dp[i][0] = dp[i][0] + min(dp[i-1][1],dp[i-1][2])
//	dp[i][1] = dp[i][1] + min(dp[i-1][0],dp[i-1][2])
//	dp[i][2] = dp[i][2] + min(dp[i-1][1],dp[i-1][0])
//}
//
//print(dp[num-1].min()!)
//let diff = CFAbsoluteTimeGetCurrent()-start
//print(diff)
//// 1: for i : = : 5.16 ( 3 1 100 100 / 100 100 100 / 1 100 100 )
//// 2: for i : += : 6.079918026924133
//// 3. num = 10, 43.5609
//// 4. num = 20, 14.37


//// 1149 - RGB 거리 -2,
////
//let start = CFAbsoluteTimeGetCurrent()
//let num = Int(readLine()!)!
//var arr = [[Int]]()
//
//for _ in 1...num {
//	arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//
//var dp = Array(repeating: Array(repeating: 0, count: 3), count: num)
//
//for i in 1..<num {
//	dp[i][0] = arr[i][0] + min(dp[i-1][1],dp[i-1][2])
//	dp[i][1] = arr[i][1] + min(dp[i-1][0],dp[i-1][2])
//	dp[i][2] = arr[i][2] + min(dp[i-1][1],dp[i-1][0])
//}
//
//print(dp[num-1].min()!)
//let diff = CFAbsoluteTimeGetCurrent()-start
//print(diff)
//
//// 1. num = 3, 4.97 ( 3 1 100 100 / 100 100 100 / 1 100 100 )
//// 2. num=10개짜리 : 5.174
//// 3. num = 20 : 2.01



//// 11052 카드 구매하기
//
//let n = Int(readLine()!)!
//var input = readLine()!.split(separator: " ").map{Int(String($0))!}
//var priceDict = [Int:Int]()
//
//for i in 0..<n {
//	priceDict[i+1] = input[i]
//}
//
//var sumArr = [[Int]]()
//
//for i in 1...n {
//
//}


//// 9251 LCS -1, for문 두개 : 44ms
//
//var input1 = readLine()!.map{String($0)}
//var input2 = readLine()!.map{String($0)}
//
//input1.insert(" ", at: 0)
//input2.insert(" ", at: 0)
//
//var arr = Array(repeating: Array(repeating: 0, count: input2.count+1), count: input1.count+1)
//print(arr)
//for i in 0..<input1.count {
//	for j in 0..<input2.count {
//		if i == 0 || j == 0 {
//			arr[i][j] = 0
//		} else if input1[i] == input2[j] {
//			arr[i][j] = arr[i-1][j-1] + 1
//		} else {
//			arr[i][j] = max(arr[i-1][j], arr[i][j-1])
//		}
//		if i == input1.count - 1 && j == input2.count - 1 {
//			print(arr[i][j])
//		}
//	}
//
//}


// 9251 LCS -2, DP
