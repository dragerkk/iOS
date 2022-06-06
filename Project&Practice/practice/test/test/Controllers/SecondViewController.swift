//
//  SecondViewController.swift
//  test
//
//  Created by 강주원 on 2022/06/05.
//

import UIKit
import SwiftUI

class SecondViewController: UIViewController {
	
	@IBOutlet weak var scrollView2: UIScrollView!
	@IBOutlet weak var button1: UIButton!
	@IBOutlet var panGestureRecognizer: UIPanGestureRecognizer!

	override func viewDidLoad() {
		button1.backgroundColor = .brown
		button1.setBackgroundImage(<#T##image: UIImage?##UIImage?#>, for: <#T##UIControl.State#>)
		
//		let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(panAction(_:)))
		panGestureRecognizer.delegate = self
		scrollView2.addGestureRecognizer(panGestureRecognizer)
	}
	
	@IBAction func panAction(_ sender: UIPanGestureRecognizer) {
//		let location = sender.location(in: scrollView2)
//		let translation = sender.translation(in: scrollView2)
		let velocity = sender.velocity(in: scrollView2)
//
//		velocity.y < 0 ? print("scroll down") : print("scroll up")
		if velocity.y > 0 {
			button1.backgroundColor = .red
		} else {
			button1.backgroundColor = .blue
		}
	}
}

extension SecondViewController: UIGestureRecognizerDelegate {
	
	func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
		return true
	}
	
}

