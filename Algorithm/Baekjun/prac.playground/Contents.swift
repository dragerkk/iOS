import Foundation

struct Town {
	let name : String
	var citizens: [String]
	var resources: [String:Int]

	init(citizens: [String], name: String, resources:[String:Int]) {
		self.citizens = citizens
		self.name = name.uppercased()
		self.resources = resources
	}

	mutating func harvestRice(_ n:Int) {
		resources["Rice"] = n
	}
}

var myTown = Town(citizens: ["A", "Bcd"], name: "king", resources: ["Wool":70, "Rice": 3])
myTown.citizens.append("Hope doe")
print("people of \(myTown.name) : \(myTown.citizens)")
print(myTown.resources)
myTown.harvestRice(77)
print(myTown.resources)


