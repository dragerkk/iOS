// // 11654 아스키 코드
// var input = Character(readLine()!)
// print(input.asciiValue!)

// // 11720 숫자의 합
// var count = Int(readLine()!)!
// var num = readLine()!.map{Int(String($0))!}
// print(num.reduce(0,+))

// // 10809 알파벳 찾기
// var input = readLine()!.map{Int(Character(String($0)).asciiValue!)}
// for j in 97...122 {
// 	if input.contains(j) {
// 		print(input.firstIndex(of:j)!, terminator: " ")
// 	} else {
// 		print(-1, terminator: " ")
// 	}
// }

// // 2675 문자열 반복
// let caseNum = Int(readLine()!)!
// for i in 1...caseNum {
// 	var input = readLine()!.split(separator: " ").map{String($0)}
// 	var string = Array(input[1])
// 	for j in 0..<string.count {
// 		for k in 1...Int(input[0])! {
// 			print(string[j], terminator: "")
// 		}
// 	}
// 	print("")
// }

// // 1157 단어 공부 -1 (180ms,373B)
// let input = readLine()!.uppercased()
// var dict : [String:Int] = [:]

// input.forEach {
// 	if dict[String($0)] == nil {
// 		dict[String($0)] = 1
// 	} else {
// 		dict[String($0)]! += 1
// 	}
// }

// var result : [String] = []
// for key in dict.keys {
// 	if dict[key] == dict.values.max()! {
// 		result.append(key)
// 	}
// }
// result.count > 1 ? print("?") : print(result[0])

// // 1157 단어 공부 -2 (72ms, 362B)
// let input = readLine()!.uppercased()
// var count : [Int] = Array(repeating: 0, count: 26)
// input.forEach {	count[Int($0.asciiValue!) - 65] += 1 }

// var maxCount = count.max()!

// let firstIndex = count.firstIndex(of: maxCount)!
// let lastIndex = count.lastIndex(of: maxCount)!

// if firstIndex == lastIndex {
// 	print(UnicodeScalar(65 + firstIndex)!)
// } else {
// 	print("?")
// }

// // 1152 단어의 개수
// let input = readLine()!.split(separator: " ")
// print(input.count)

// // 2908 상수 -1 (손코딩)
// var input = readLine()!.split(separator: " ").map{Int($0)!}

// for i in 0...1 {
// 	let a = input[i] / 100
// 	let b = (input[i] - (a*100)) / 10
// 	let c = input[i] % 10
// 	input[i] = c*100 + b*10 + a
// }
// print(input.max()!)

// // 2908 상수 -2 (swift 참맛)
// let input = readLine()!.split(separator: " ")
// let num1 = Int(String(input[0].reversed()))!
// let num2 = Int(String(input[1].reversed()))!

// print(num1>num2 ? num1 : num2)

// // 5622 다이얼
// var input = readLine()!.map{Character(String($0))}
// var result = 0

// for i in input {
// 	switch i {
// 	case "A", "B", "C" :
//         result += 3
// 	case "D", "E", "F" :
//     	result += 4
//     case "G", "H", "I" :
//         result += 5
//     case "J", "K", "L" :
//         result += 6
//     case "M", "N", "O" :
//         result += 7
//     case "P", "Q", "R", "S" :
//         result += 8
//     case "T", "U", "V" :
//         result += 9
// 	default :
// 		result += 10
// 	}
// }
// print(result)

// // 2941 크로아티아 알파벳 -1 replacingOccurrences / 24ms / 79160KB
// import Foundation
// var input = readLine()!
// let croChar = ["c=","c-","dz=","d-","lj","nj","s=","z="]

// for i in 0 ..< croChar.count {
// 	input = input.replacingOccurrences(of:croChar[i], with:"k")
// }
// print(input.count)

// // 1316 그룹단어 체커
// let count = Int(readLine()!)!
// var groupNum = 0
// for _ in 1...count {
// 	let inputWord = readLine()!.map{Character(String($0))}
// 	var verify:[Character] = []
// 	for i in 0..<inputWord.count {
// 		if i == 0 {
// 			verify.append(inputWord[i])
// 		} else {
// 			if inputWord[i-1] != inputWord[i] && verify.firstIndex(of: inputWord[i]) != nil {
// 				break
// 			} else {
// 				verify.append(inputWord[i])
// 			}
// 		}
// 	}
// 	if verify.count == inputWord.count {
// 		groupNum += 1
// 	}
// }
// print(groupNum)

