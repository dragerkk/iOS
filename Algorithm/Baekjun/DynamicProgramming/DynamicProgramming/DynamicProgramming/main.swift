import Foundation

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


// 1149 - RGB 거리

