// How to handle Optional

var myOptional: String?

myOptional = "Hello"

// wrong
//let text: String = myOptional

// 1. Force Unwrapping : the least safe way
let text: String = myOptional!

// 2. Check for nil value :
if myOptional != nil {
	let text: String = myOptional!
} else {
	print("myOptional : nil")
}

// 3. Optional Binding : use "if let" to bind the value of the optional if it's not nil to a new constant. (within the curly braces)
if let safeOptional = myOptional {
	let text: String = safeOptional
	print(safeOptional)
} else {
	print("myOptional : nil")
}

// 4. Nil Coalescing Operator == "??" : Checks to see if the optional is nil -- if it's nil, then use default value.
// 			==> optional ?? defaultValue
myOptional = nil
let text2: String = myOptional ?? "I am the default value"
print(text2)
 

// --------------Optional class / struct

// 5. Optional Chaining : if this optional isn't nil, then continue along this chain and go ahead and access that property.
// 			==> optional?.property // optional?.method()
struct MyOptionalStruct {
	var property = 123
	func method() {
		print("I am the struct's method.")
	}
}

let myOptionalStruct: MyOptionalStruct? // haven't yet initialized it.

myOptionalStruct = MyOptionalStruct() // initialized.
print(myOptionalStruct?.property)
myOptionalStruct?.method()
