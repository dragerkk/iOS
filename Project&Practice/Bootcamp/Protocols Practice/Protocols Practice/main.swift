
class Bird {
	
	var isFemale = true
	
	func layEgg() {
		if isFemale {
			print("The bird makes a new bird in a shell.")
		}
	}
	func fly() {
		print("The bird flaps its wings and lifts off into the sky.")
	}
}

class Eagle: Bird {

	func soar() {
		print("The eagle glides in the air using are currents.")
	}
}

class Penguin: Bird {
	
	func swim() {
		print("The penguin paddles through the water.")
	}
}

let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()
myEagle.soar()

let myPenguin = Penguin()
myPenguin.layEgg()
myPenguin.swim()
myPenguin.fly() // 여기서 문제가 발생, bird의 subclass로 펭귄을 만들고 싶은데.. fly method는 inherit하고 싶지 않음

struct FlyingMuseum {
	func flyingDemo(flyingObject: Bird) {
		flyingObject.fly()
	}
}

class Airplane: Bird {
	override func fly() {
		print("The airplane uses its engine to lift off into the air.")
	}
}

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle) // 문제없음
museum.flyingDemo(flyingObject: myPenguin) // 문제가 발생..... 펭귄은 못나는데....... 날수있는 애가 됨..

let myPlane = Airplane()
myPlane.fly() // 문제없음
myPlane.layEgg() // ????? ㄷㄷ



// --------------------- How can we have both classes and structures that can fly? ----- classes can be inherited but structures can't.
//								--> Protocol can solve this problem.


protocol CanFly {
	func fly() // 프로토콜에서 메서드는 바디가없음. 그냥 선언만 해줌
	
}

class Bugs {
	var isFemale = true
}

class SuperHero {
	
}

class Butterfly: Bugs, CanFly {
	func fly() {
		print("The butterfly is flying.")
	}
	
}

class Ant: Bugs {
	
}

struct Superman: CanFly { // structure이기 때문에 inherit은 할 수 없지만, 프로토콜은 적용시킬 수 있음
	func fly() {
		print("The superman can fly with his red cape.")
	}
}
 
struct FlyingMuseum2 {
	func flyingDemo(flyingObject: CanFly) {
		flyingObject.fly()
	}
}

let superman = Superman()
let redAnt = Ant()

let secondMuseum = FlyingMuseum2()
secondMuseum.flyingDemo(flyingObject: superman)
secondMuseum.flyingDemo(flyingObject: redAnt) // 오류발생! Ant는 Bugs의 subclass이지만 fly() method가 없기 때문. --- 우리가 원하던 결과

