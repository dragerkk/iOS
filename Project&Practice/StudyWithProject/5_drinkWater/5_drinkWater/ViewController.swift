//
//  ViewController.swift
//  5_drinkWater
//
//  Created by 강주원 on 2022/07/03.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

	let topView = UIView()
	let myImageView = UIImageView()
	let waterButton = UIButton()
	let resetButton = UIButton()
	
	var buttonCount = 0
	
	var currentTime = Date()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.setView()
		requestAuthorization()
		requestSendNotification(seconds: 10)
				
	}

}


extension ViewController {
	
	func requestAuthorization() {
		UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
			if let error = error {
				print(#function, error)
			}
		})
	}
	
	func requestSendNotification(seconds: Double) {
		let notiContent = UNMutableNotificationContent()
		notiContent.title = "물"
		notiContent.body = "드세요"
		
		let trigger = UNTimeIntervalNotificationTrigger(timeInterval: seconds, repeats: false)
		
		let request = UNNotificationRequest(identifier: UUID().uuidString, content: notiContent, trigger: trigger)
		
	}

}
