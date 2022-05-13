import UIKit


// 첫 번째 예시

var myDouble = 3.14159
let myRoundedDouble = String(format:"%.1f", myDouble)

// 데이터를 스트링으로 바꾸지 않고, Double type을 유지하면서 소수점의 개수를 줄이고자 함
myDouble.round() // 현재 스위프트에서 제공하는 round() method를 사용하면 '3'이 되어버림


// ------ Extension을 활용해보자
// swift에서 사용하는 Double data type을 확장시킬건데
// 새로 만든 method를 사용해서, 입력받은 Double 값을 원하는만큼의 소수점 자릿수까지 잘라버리려고 함

extension Double {
	func round(to places: Int) -> Double {
		// swift에서는 parameter name만 다르게 해주면 기존 함수와 동일한 이름을 가진 새로운 함수를 만들 수 있음.
		// 여기서는 to : external parameter name / places : internal parameter name
		let precisionNumber = pow(10, Double(places))
		var n = self
		n *= precisionNumber
		n.round()
		n /= precisionNumber
		return n
	}
}

var myDouble2 = 3.14159
myDouble2.round(to: 2)



// 두 번째 예시

// 버튼을 하나 만들건데, 여러 줄을 작성해서 버튼을 동그랗게 만드는 대신 Extension을 활용
extension UIButton {
	func makeCircular() {
		self.clipsToBounds = true
		self.layer.cornerRadius = self.frame.size.width / 2
	}
}

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red
button.makeCircular()


// ------- Extension in Protocol

protocol CanFly {
	func fly()
}

extension CanFly {
	func fly() {
		print("It takes off into the air.")
	}
}

class Eagle: CanFly {
}
struct Airplane: CanFly {
}
let eagle = Eagle()
eagle.fly()
let myPlane = Airplane()
myPlane.fly()

// protocol 내에서는 method의 body 부분을 입력하지 않는다.
// extension으로 기능을 넣어줘서 다른 class, struct로 이를 활용할 수 있음

