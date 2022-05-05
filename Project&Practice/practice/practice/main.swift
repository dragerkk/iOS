import Foundation
// 연산자 우선순위

let expression = "100-200*300-500+20" // answer:60420

let s = "qwer"

print(s.count)
if Array(s).count % 2 == 0 {
	print(String(Array(s)[s.count/2-1...s.count/2]))
} else {
	print(String(Array(s)[s.count/2]))
}
//
//func solution(_ s:String) {
//	if Array(s).count % 2 == 0 {
//		print(String(Array(s)[(s.count/2)-1...(s.count/2)]))
//	}else{
//		print(String(Array(s)[s.count/2]))
//	}
//}
//
//solution("qwer")
