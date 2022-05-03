import Foundation
// 연산자 우선순위

let expression = "100-200*300-500+20" // answer:60420


let s = "a B z"
let n = 4

var str = Array(s)
let lower : [Character] = Array("abcdefghijklmnopqrstuvwxyz")
let upper : [Character] = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

for i in 0..<str.count {
	if str[i] == " " {
		continue
	}
	if lower.contains(str[i]) {
		let index = lower.firstIndex(of: str[i])!
		if index + n > 25 {
			str[i] = lower[index+n-26]
		} else {
			str[i] = lower[index+n]
		}
	}
	if upper.contains(str[i]) {
		let index = upper.firstIndex(of: str[i])!
		if index + n > 25 {
			str[i] = upper[index+n-26]
		} else {
			str[i] = upper[index+n]
		}
	}

}

print(lower.count)
print(String(str))
