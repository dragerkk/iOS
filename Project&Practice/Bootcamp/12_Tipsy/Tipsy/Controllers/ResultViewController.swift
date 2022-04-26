//
//  ResultViewController.swift
//  Tipsy
//
//  Created by 강주원 on 2022/04/26.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

	@IBOutlet weak var totalLabel: UILabel!
	@IBOutlet weak var settingLabel: UILabel!
	
	var totalPrice = "0"
	var numPeople: Int = 0
	var tipPercentage: Int = 0
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		totalLabel.text = totalPrice
		settingLabel.text = "Split between \(numPeople) people, with \(tipPercentage)% tip."

        // Do any additional setup after loading the view.
    }
    
	@IBAction func recalculatePressed(_ sender: UIButton) {
		
		self.dismiss(animated: true, completion: nil)
	}
	

}
