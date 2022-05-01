import Foundation

var arr1 = [9,20,28,18,11]
var arr2 = [30,1,21,17,28]
let n = 5

var answer = Array(repeating: "#", count: n)

var binary1 = Array(repeating: 0, count: n)
var binary2 = Array(repeating: 0, count: n)

var combineArr = Array(repeating: "0", count: n)

var binArr = [String]()
// 1. 이진수로 바꿈 2. 이진수 0->" ", 1->"#"바꿈 3. 배열비교해서 하나라도 #이면 #을 새배열에 넣음 4.캐릭터를 스트링으로 바꿔줌
for i in 0..<n {
	while arr1[i] >= 2 && arr2[i] >= 2 {
		for j in (0..<n).reversed() {
			let res1 = arr1[i] % 2
			let res2 = arr2[i] % 2
			binary1[j] = res1
			binary2[j] = res2
			arr1[i] /= 2
			arr2[i] /= 2
		}
	}
	let stringBin1 = binary1.map{String($0)}
	let stringBin2 = binary2.map{String($0)}
	print(stringBin1)
	print(stringBin2)
	
	for i in 0..<n {
		if stringBin1[i] == "1" || stringBin2[i] == "1" {
			combineArr[i] = "#"
		} else {
			combineArr[i] = " "
		}
	}
	print("c: \(combineArr)")
	binArr.append(combineArr.joined(separator: ""))
}

print(binArr)



