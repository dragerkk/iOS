//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

	@IBOutlet weak var heightLabel: UILabel!
	@IBOutlet weak var weightLabel: UILabel!
	@IBOutlet weak var heightSlider: UISlider!
	@IBOutlet weak var weightSlider: UISlider!
	
	var calculatorBrain = CalculatorBrain()
	
	override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
	
	@IBAction func heightSlider(_ sender: UISlider) {
		let height = String(format: "%.2f", sender.value)
		heightLabel.text = "\(height)m"
	}
	
	@IBAction func weightSlider(_ sender: UISlider) {
		let weight = String(format: "%.2f", sender.value)
		weightLabel.text = "\(weight)Kg"
	}
	
	@IBAction func calculatePressed(_ sender: Any) {
		let height = heightSlider.value
		let weight = weightSlider.value
		
		calculatorBrain.calculateBMI(height, weight)

		self.performSegue(withIdentifier: "goToResult", sender: self)

	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "goToResult" { // segue가 여러 개 있을 수 있기 때문에 충돌을 피하기 위해 체크함.
			let destinationVC = segue.destination as! ResultViewController // as!를 사용해서 정확한 대상을 지정함 ( Downcasting )
			destinationVC.bmiValue = calculatorBrain.getBMIValue()
		}
	}

}

