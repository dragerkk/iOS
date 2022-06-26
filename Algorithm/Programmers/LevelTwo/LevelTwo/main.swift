//// JadenCase 문자열 만들기
//
//func solution(_ s:String) -> String {
//	var input = s.map{String($0).lowercased()}
//	let alphabet = "abcdefghijklmnopqrstuvwxyz".map{String($0)}
//
//	if alphabet.contains(input[0]) {
//		input[0] = input[0].uppercased()
//	}
//	for i in 0..<input.count-1 {
//		if input[i] == " " && alphabet.contains(input[i+1]) {
//			input[i+1] = input[i+1].uppercased()
//		}
//	}
//	return input.joined(separator: "")
//}


//// 스킬트리
//
//import Foundation
//
//func solution(_ skill:String, _ skill_trees:[String]) -> Int {
//
//	var result = 0
//
//	for i in skill_trees {
//		var s = skill
//		var check = true
//		for j in i {
//			if s.contains(j) && s.first != j {
//				check = false
//				break
//			} else if j == s.first {
//				check = true
//				s.removeFirst()
//			}
//			if s.count == 0 {
//				break
//			}
//		}
//		if check != false {
//			result += 1
//		}
//	}
//	return result
//}


//// N개의 최소공배수
//
//func solution(_ arr:[Int]) -> Int {
//
//	return arr.reduce(1) { lcm($0, $1) }
//}
//
//func gcd(_ n1:Int, _ n2:Int) -> Int {
//	let r = n1 % n2
//	if r != 0 {
//		return gcd(n2, r)
//	} else {
//		return n2
//	}
//}
//
//func lcm(_ n1:Int, _ n2:Int) -> Int {
//
//	return (n1 * n2) / gcd(n1,n2)
//}
//

