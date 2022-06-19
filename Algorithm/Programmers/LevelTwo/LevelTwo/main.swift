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


