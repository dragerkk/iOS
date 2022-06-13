//
//  NavViewController.swift
//  test
//
//  Created by 강주원 on 2022/06/13.
//

import UIKit

class NavViewController: UIViewController {
	@IBOutlet weak var testTextField: UITextField!
	
	@IBOutlet weak var testLabel: UILabel!
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	@IBAction func returnKeyTapped(_ sender: UITextField) {
		
	}
	@IBAction func setButton(_ sender: UIButton) {
		testLabel.text = testTextField.text
	}
	@IBAction func clearButtonTapped(_ sender: UIButton) {
		testLabel.text = ""
	}
}
