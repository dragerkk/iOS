//
//  main.swift
//  13_Number&Combinatorics
//
//  Created by 강주원 on 2022/04/20.
//

import Foundation
//
//// 5086 배수와 약수 -1, 멍청하게 작성한 코드
//
//while true {
//	let num = readLine()!.split(separator: " ").map{Float(String($0))!}
//	if num == [0,0] {
//		break
//	}
//	let divNum = num[0]/num[1]
//	let divNum2 = num[1]/num[0]
//
//	if divNum > 1 {
//		if divNum == Float(Int(divNum)) {
//			print("multiple")
//		} else {
//			print("neither")
//		}
//	} else if divNum < 1 {
//		if divNum2 == Float(Int(divNum2)) {
//			print("factor")
//		} else {
//			print("neither")
//		}
//	} else {
//		print("neither")
//	}
//}

//// 5086 배수와 약수 -2 , 조금 덜 멍청하게 작성한 듯..
//
//while true {
//	let num = readLine()!.split(separator: " ").map{Int(String($0))!}
//	if num == [0,0] {
//		break
//	}
//	let remainder1 = num[0]%num[1]
//	let remainder2 = num[1]%num[0]
//
//	if num[0] > num[1] {
//		if remainder1 == 0 {
//			print("multiple")
//		} else {
//			print("neither")
//		}
//	} else if num[0] < num[1] {
//		if remainder2 == 0 {
//			print("factor")
//		} else {
//			print("neither")
//		}
//	} else { // 두 수가 같을 경우...
//		print("neither")
//	}
//}
//
//// 5086 배수와 약수 -3, 드디어 안멍청하게 작성...
//
//while true {
//	let num = readLine()!.split(separator: " ").map{Int(String($0))!}
//	if num == [0,0] {
//		break
//	}
//	if num[0] % num[1] == 0 {
//		print("multiple")
//	} else if num[1] % num[0] == 0 {
//		print("factor")
//	} else {
//		print("neither")
//	}
//}

