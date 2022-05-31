//
//  ViewController.swift
//  1_CloneScreen
//
//  Created by 강주원 on 2022/05/31.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var stackView: UIStackView!
	@IBOutlet weak var secondView: UIView!
	
	func customMargin() {
		stackView.setCustomSpacing(3, after: secondView)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		customMargin()
		// Do any additional setup after loading the view.
	}


}

