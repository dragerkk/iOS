// Closure : anonymous functions or functions without a name -- self-contained package of functionality.


// ------------ Function
import UIKit

func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
	return operation(n1, n2)
}

func add (no1: Int, no2: Int) -> Int {
	return no1 + no2
}

func multiply (no1:Int, no2: Int) -> Int {
	return no1 * no2
}

calculator(n1: 2, n2: 3, operation: add)
calculator(n1: 2, n2: 3, operation: multiply)


// ------------- Function -> Closure

//func sum (n1 : Int, n2 : Int) -> Int {
//	return n1 + n2
//}
//
//{ (n1: Int, n2: Int) -> Int in
//	return n1 + n2
//}

// --------------------------

// ----- same as calculator(n1:2, n2:3, operation:multiply)
calculator(n1: 2, n2: 3, operation: { (no1: Int, no2: Int) -> Int in
	return no1 * no2
})

calculator(n1: 2, n2: 3, operation: { (no1, no2) in // datatype은 컴파일러에서 자동으로 추론할 수 있기 때문에 생략 가능
	no1 * no2 // 뭔가를 processing하고 있어서 return할 것이라는 것도 추론해버림... return도 생략 가능
})

// anonymous parameter name을 사용할 수 있음
// $0 == first parameter, $1 == second parameter, ...

let result = calculator(n1: 2, n2: 3, operation: {$0 * $1})
print(result)

// swift에서 function 안의 마지막 parameter가 closure라면,,
// 마지막 parameter name조차 생략이 가능하며, 그 앞의 parameter까지 input section을 닫아버리고 마지막에 클로저를 넣으면 됨
// trailing closure라고 함 (후행 클로저)

let result2 = calculator(n1: 2, n2: 3) {$0 * $1}
print(result2)


// ----------example

let array = [6,2,3,9,4,1]

func addOne (n1: Int) -> Int {
	return n1 + 1
}

array.map(addOne)
// 1. 위의 코드를 클로저로 먼저 만들어보자

array.map({ (n1) in
	n1+1})

// 2. anonymous parameter name & trailing closure 사용 -> 한 줄로 줄이면 아래와 같다.
let resultArr = array.map {$0+1}
print(resultArr)



// ------- Closure Expression Syntax

{ (parameters) -> return type in
	statements
}
