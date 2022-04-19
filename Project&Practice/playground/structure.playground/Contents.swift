
struct Town {
    // Town's Properties
    let name : String // townname
    var citizens : [String] // citizens, array
    var resources : [String : Int] // resources, dictionary
    
    // init의 parameter에는 struct의 property와 중복되지 않는 변수명을 사용한다.
    // **만약 동일한 변수명을 사용하고 싶다면 property에 해당하는 변수를 사용할 때 앞에 self.를 붙여준다.
    // **self는 생성될 최종 객체를 나타낸다.
    init(name : String, citizens : [String], resources : [String : Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    // Town's Behavior, 구조체와 관련된 함수 == method
    func fortify() {
        print("Defences increased!")
    }
}

var anotherTown = Town(name: "Nameless Island", citizens: ["Tom"], resources: ["Coconuts" : 100, "Crab" : 30])

var ghostTown = Town(name: "Ghost town", citizens: [], resources: ["Tumbleweed" : 1])

anotherTown.citizens.append("Wilson")
print(anotherTown.citizens)
ghostTown.fortify()


