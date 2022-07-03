//
//  ViewController.swift
//  5_drinkWater
//
//  Created by 강주원 on 2022/07/03.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

	var sampleView: UIView = {
		let view = UIView()
		view.backgroundColor = .systemBlue
		return view
	} ()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		view.backgroundColor = .white
		
		self.view.addSubview(sampleView)
		sampleView.snp.makeConstraints{ (make) in
			make.edges.equalTo(view).inset(UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20))
		}
	}
	


}

