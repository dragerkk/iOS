let caseNum = Int(readLine()!)!
var data : [(Int, String)] = []

for _ in 1...caseNum {
	var input = readLine()!.split(separator: " ")
	let age = Int(input[0])!
	let name = String(input[1])
	data.append((age, name))
}

var temp = (0,"0")
for _ in 0..<(data.count-1) {
	for j in 0..<(data.count-1) {
		if data[j].0 < data[j+1].0 {
			temp = data[j]
			data[j] = data[j+1]
			data[j+1] = temp
		}
	}
}
print(data)
