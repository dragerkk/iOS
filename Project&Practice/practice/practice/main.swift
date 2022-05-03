import Foundation
// 연산자 우선순위

let expression = "100-200*300-500+20" // answer:60420


var str = "try hello world"

var result = String()
var n = 0
for i in str {
	if n % 2 == 0 {
		result.append(i.uppercased())
	} else {
		result.append(i)
	}
	n+=1
	if i == " " {
		n = 0
	}
}
print(result)
