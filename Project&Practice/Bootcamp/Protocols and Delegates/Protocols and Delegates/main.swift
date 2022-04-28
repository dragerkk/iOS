
protocol AdvancedLifeSupport {
	func performCPR()
}

class EmergencyCallHandler {
	var delegate: AdvancedLifeSupport?
	
	func assessSituation() {
		print("Can you tell me what happened?")
	}
	
	func medicalEmergency() {
		delegate?.performCPR()
	}
}

struct Paramedic: AdvancedLifeSupport {
	init(handler: EmergencyCallHandler) {
		handler.delegate = self
	}
	
	func performCPR() {
		print("The paramedic does chest compressions, 30 per second.")
	}
}

let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()


class Doctor: AdvancedLifeSupport {
	
	init(handler: EmergencyCallHandler) {
		handler.delegate = self
	}
	
	func performCPR() {
		print("The doctor does chest compressions, 30 per second.")
	}
	
	func useStethescope() {
		print("Lestening for heart sounds.")
	}
}

class Surgeon: Doctor {
	// Doctor class로부터 inherit 되기 때문에, 자동적으로 AdvancedLifeSupport protocol을 adopt한다.
	override func performCPR() {
		super.performCPR()
		print("Sings staying alive by the BeeGees")
	}
	
	func useElectricDrill() {
		print("Whirr........")
	}
}

print("next day:")

let james = EmergencyCallHandler()
let sujan = Surgeon(handler: james)

james.assessSituation()
james.medicalEmergency()

