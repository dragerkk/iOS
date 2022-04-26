//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
	
	@IBOutlet weak var billTextField: UITextField!
	
	@IBOutlet weak var tenPctBbutton: UIButton!
	@IBOutlet weak var zeroPctButton: UIButton!
	@IBOutlet weak var twentyPctButton: UIButton!
	@IBOutlet weak var splitNumberLabel: UILabel!
	
	var result: Double = 0
	var tip: Double = 0
	var numPeople: Double = 0
	var sumPrice: Double = 0
	var finalPrice = "0"
	
	@IBAction func tipChanged(_ sender: UIButton) {
		
		billTextField.endEditing(true)
		
		if sender.currentTitle == "20%" {
			twentyPctButton.isSelected = true
			zeroPctButton.isSelected = false
			tenPctBbutton.isSelected = false
			tip = 0.2
			
		} else if sender.currentTitle == "0%" {
			zeroPctButton.isSelected = true
			tenPctBbutton.isSelected = false
			twentyPctButton.isSelected = false
			tip = 0
			
		}else if sender.currentTitle == "10%"{
			tenPctBbutton.isSelected = true
			twentyPctButton.isSelected = false
			zeroPctButton.isSelected = false
			tip = 0.1
			
		}
	}
	
	@IBAction func stepperValueChanged(_ sender: UIStepper) {
		numPeople = sender.value
		splitNumberLabel.text = String(numPeople)
		
	}
	
	@IBAction func calculatePressed(_ sender: UIButton) {
		sumPrice = Double(billTextField.text!) ?? 0.0
		result = (1+tip)*(sumPrice)/numPeople
		finalPrice = String(format: "%.2f", result)
		print(finalPrice)
				
		self.performSegue(withIdentifier: "goToResult", sender: self)
		
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		if segue.identifier == "goToResult" {
			let destinationVC = segue.destination as! ResultViewController
			destinationVC.totalPrice = finalPrice
			destinationVC.tipPercentage = Int(tip*100)
			destinationVC.numPeople = Int(numPeople)
		}
	}
	
}
