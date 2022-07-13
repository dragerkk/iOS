//// 9093 단어 뒤집기
//let caseNum = Int(readLine()!)!
//for _ in 1...caseNum {
//	var str = readLine()!.split(separator: " ").map{String($0)}
//
//
//	for i in str {
//		var a = ""
//		a += i.reversed()
//		print(a, terminator: " ")
//	}
//	print("")
//
//}


//// 1764 듣보잡
//
//let caseNum = readLine()!.split(separator: " ").map{Int(String($0))!}
//var dictN = [String:Bool]()
//var result = [String]()
//
//for _ in 1...caseNum[0] {
//	let n = readLine()!
//	dictN[n] = true
//}
//
//for _ in 1...caseNum[1] {
//	let m = readLine()!
//	if dictN[m] == true {
//		result.append(m)
//	}
//}
//
//print(result.count)
//for str in result.sorted() {
//	print(str)
//}

