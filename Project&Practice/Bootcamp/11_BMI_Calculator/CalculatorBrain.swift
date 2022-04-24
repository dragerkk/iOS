//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 강주원 on 2022/04/23.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
	var bmi : Float = 0 // initiate 하지 않으면, VC에서 사용할 때 따로 초기화해줘야 함
	
	mutating func calculateBMI(_ height:Float, _ weight:Float) {
		self.bmi = weight / pow(height, 2)
	}
	
	func getBMIValue() -> String {
		return String(format: "%.2f", bmi)
	}
	
}
