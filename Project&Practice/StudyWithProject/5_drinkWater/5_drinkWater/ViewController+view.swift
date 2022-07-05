//
//  ViewController+view.swift
//  5_drinkWater
//
//  Created by 강주원 on 2022/07/04.
//

import UIKit
import SnapKit


// MARK: - Setting Views
extension ViewController {
	
	func setView() {
		// MARK: - topView
		self.view.addSubview(topView)
		topView.snp.makeConstraints {
			$0.top.equalTo(view.safeAreaLayoutGuide)
			$0.left.equalTo(view.safeAreaLayoutGuide)
			$0.right.equalTo(view.safeAreaLayoutGuide)
			$0.height.equalTo(500)
		}
		
		// MARK: - myImageView
		myImageView.image = UIImage(named: "i1")
		self.topView.addSubview(myImageView)
		myImageView.snp.makeConstraints {
			$0.edges.equalTo(topView)
		}
		
		// MARK: - watterButton, resetButton
		self.view.addSubview(self.waterButton)
		waterButton.setBackgroundImage(UIImage(named: "cup"), for: .normal)
		waterButton.snp.makeConstraints {
			$0.top.equalTo(topView.snp.bottom).offset(20)
			$0.centerX.equalToSuperview()
		}
		
		self.view.addSubview(self.resetButton)
		resetButton.setTitle("RESET", for: .normal)
		resetButton.setTitleColor(UIColor.darkGray, for: .normal)
		resetButton.titleLabel?.font = UIFont(name: "Verdana", size: 20)
//		resetButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
		resetButton.snp.makeConstraints {
			$0.top.equalTo(waterButton.snp.bottom).offset(30)
			$0.centerX.equalToSuperview()
		}
		
		// MARK: - Button Event
		self.waterButton.addTarget(self, action: #selector(waterButtonTapped(_sender:)), for: .touchUpInside)
		self.resetButton.addTarget(self, action: #selector(resetButtonTapped(_sender:)), for: .touchUpInside)
	}
	
	// MARK: - waterButton Event
	@objc func waterButtonTapped(_sender: UIButton) {
		self.buttonCount += 1
		
		switch buttonCount {
		case 1:
			myImageView.image = UIImage(named: "i2")
		case 2:
			myImageView.image = UIImage(named: "i3")
		case 3:
			myImageView.image = UIImage(named: "i4")
		case 4:
			myImageView.image = UIImage(named: "i5")
		case 5:
			myImageView.image = UIImage(named: "i6")
		case 6:
			myImageView.image = UIImage(named: "i7")
		case 7:
			myImageView.image = UIImage(named: "i8")
		case 8:
			myImageView.image = UIImage(named: "i9")
		case 9:
			myImageView.image = UIImage(named: "i10")
		case 10:
			myImageView.image = UIImage(named: "i11")
		case 11:
			myImageView.image = UIImage(named: "i12")
		case 12:
			myImageView.image = UIImage(named: "i13")
		case 13:
			myImageView.image = UIImage(named: "i14")
		case let x where x >= 14:
			myImageView.image = UIImage(named: "i15")
			waterButton.setBackgroundImage(UIImage(named: "end"), for: .normal)
		default:
			myImageView.image = UIImage(named: "i1")
		}
		//
		self.currentTime = Date()
	}
	
	@objc func resetButtonTapped(_sender: UIButton) {
		self.buttonCount = 0
		setView()
	}
	
	
}
