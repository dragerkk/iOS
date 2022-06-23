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


// 스킬트리

import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
	
	var result = 0

	for i in skill_trees {
		var s = skill
		var check = true
		for j in i {
			if s.contains(j) && s.first != j {
				check = false
				break
			} else if j == s.first {
				check = true
				s.removeFirst()
			}
			if s.count == 0 {
				break
			}
		}
		if check != false {
			result += 1
		}
	}
	return result
}
