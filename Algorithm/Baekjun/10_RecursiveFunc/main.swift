// // 10872 팩토리얼, 8ms, 62224KB
// var num = Int(readLine()!)!
// func factorial (_ num:Int) -> Int {
// 	if num <= 1 {
// 		return 1
// 	}
// 	return num*factorial(num-1)
// }
// print(factorial(num))

// // 10870 피보나치 수 5, 8ms, 62224KB
// let input = Int(readLine()!)!

// func fibo (_ nthNumber:Int) -> Int {
// 	if nthNumber == 0 {
// 		return 0
// 	} else if nthNumber == 1 {
// 		return 1
// 	}
// 	return fibo(nthNumber-1)+fibo(nthNumber-2)
// }

// print(fibo(input))

// // 2447 별 찍기 10-1, 시간초과

// func star (_ x:Int, _ y:Int, _ num:Int) {
// 	if (x/num)%3 == 1 && (y/num)%3 == 1 {
// 		print(" ",terminator:"")
// 	} else if num/3 == 0 {
// 		print("*",terminator:"")
// 	} else {
// 		star(x,y,num/3)
// 	}
// }

// let input = Int(readLine()!)!

// for i in 0..<input {
// 	for j in 0..<input {
// 		star(i,j,input)
// 	}
// 	print("")
// }

// // 2447 별찍기*** 10-2, 540ms, 70104KB

// let input = Int(readLine()!)!
// var result = ""

// func star (_ x:Int, _ y:Int, _ num:Int) {
// 	if (x/num)%3 == 1 && (y/num)%3 == 1 {
// 		result += " "
// 	} else if num/3 == 0 {
// 		result += "*"
// 	} else {
// 		star(x,y,num/3)
// 	}
// }
// for i in 0..<input {
// 	for j in 0..<input {
// 		star(i,j,input)
// 	}
// 	result+="\n"
// }
// print(result)

// // 11729 하노이 탑 이동 순서, 576ms, 79160KB
// import Foundation
// let num = Double(readLine()!)!
// print(Int(pow(2,num)-1))

// func move (_ from:Int,_ to:Int) {
// 	print("\(from) \(to)")
// }

// func hanoi (_ num:Int, _ from:Int, _ via:Int, _ to:Int) {
// 	if num == 1 {
// 		print("\(from) \(to)")
// 	} else {
// 		hanoi(num-1, from, to, via)
// 		move(from, to)
// 		hanoi(num-1, via, from, to)
// 	}
// }

// hanoi(Int(num),1,2,3)


// 11729 하노이 탑 이동 순서-2, 288ms, 70112KB
let num = Int(readLine()!)!

var result:String = ""
func hanoi (_ num:Int, _ from:Int, _ via:Int, _ to:Int) {
	if num == 1 {
		result += "\(from) \(to)\n"
	} else {
		hanoi(num-1, from, to, via)
		result += "\(from) \(to)\n"
		hanoi(num-1, via, from, to)
	}
}

var base = 2
for _ in 0..<num-1 {
	base *= 2
}
print(base-1)
hanoi(Int(num),1,2,3)
print(result,terminator:"")