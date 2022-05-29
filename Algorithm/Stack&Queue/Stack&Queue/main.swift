// Stack
// 스택의 끝에만 데이터 삽입 (push)
// 스택의 끝에서만 데이터 삭제 (pop)
// 스택의 마지막 원소만 읽기 (read)
// --> LIFO (Last In, First Out)

// 한 줄의 문자열을 입력받고, 괄호에 대해서 오류가 있는지 확인하는 프로그램 작성

struct CheckParanthesis {
	var data : String
	var stack : [Character] = []
	
	let openPara : [Character] = ["(", "{", "["]
	let closePara : [Character] = [")", "}", "]"]
	let pairPara : [Character:Character] = ["(":")", "{":"}", "[":"]"]
	
	mutating func test() {
		for i in data {
			var poped : Character?
			if openPara.contains(i) {
				stack.append(i)
			} else if closePara.contains(i) {
				poped = stack.popLast()
				if poped == nil {
					print("error2: missing opening paranthesis.")
					break
				} else {
					if i != pairPara[poped!] {
						print("error3: paranthesises are missmatched.")
						stack.removeAll()
						break
					}
				}
			}
		}
		if stack.count != 0 {
			print("error1: missing closing paranthesis.")
		}
	}
}

var check1 = CheckParanthesis(data: "(var x = 2")
check1.test()
// output-- error1: missing closing paranthesis.

var check2 = CheckParanthesis(data: "var x = 2)")
check2.test()
// output-- error2: missing opening paranthesis.

var check3 = CheckParanthesis(data: "(var x = [1,2,3)]")
check3.test()
// output-- error3: paranthesises are missmatched.


