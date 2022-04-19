// // 2750 수 정렬하기, 8ms, 62228KB
// let input = Int(readLine()!)!
// var array : [Int] = []
// for _ in 1...input {
// 	array.append(Int(readLine()!)!)
// }
// array.sort()
// for i in 0..<array.count {
// 	print(array[i])
// }
// 시간복잡도가 O(n^2)인 정렬 알고리즘으로 다시 풀어볼 것

// // 2751 수 정렬하기 2 -1, 1344ms, 74716KB
// let input = Int(readLine()!)!
// var array : [Int] = []
// for _ in 1...input {
// 	array.append(Int(readLine()!)!)
// }
// array.sort()
// for i in 0..<array.count {
// 	print(array[i])
// }
// 정렬-swift 내장함수를 이용했을 시 시간이 오래걸림
// 시간복잡도가 O(nlong)인 정렬 알고리즘으로 다시 풀어볼 것

// 10989 수 정렬하기 3 (카운팅 정렬)
let num = Int(readLine()!)!
var countArray : [Int] = []

for _ in 1...num {
	let input = Int(readLine()!)!
	if !countArray.contains(input) {
		countArray.append(input)
	}
}


print(countArray)