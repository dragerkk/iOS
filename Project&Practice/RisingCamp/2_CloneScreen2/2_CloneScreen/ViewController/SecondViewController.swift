//
//  SecondViewController.swift
//  2_CloneScreen
//
//  Created by 강주원 on 2022/06/09.
//
import UIKit

class SecondViewController: UIViewController {
	@IBOutlet weak var scrollView: UIScrollView!
	
	let topSpacerView = UIView()
	let headerView = HeaderView()
	
	var headerViewTopConstaints: NSLayoutConstraint?
	
	override func viewDidLoad() {
		super.viewDidLoad()
//		headerView.headerLabel.text = "Pay"
		style()
		layout()
	}
}

extension SecondViewController {
	
	func style() {
		view.backgroundColor = .white
		topSpacerView.backgroundColor = .white
		
		topSpacerView.translatesAutoresizingMaskIntoConstraints = false
		headerView.translatesAutoresizingMaskIntoConstraints = false
		
	}
	
	func layout() {
		view.addSubview(topSpacerView)
		view.addSubview(headerView)
		
		headerViewTopConstaints = headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
		
		NSLayoutConstraint.activate([
			topSpacerView.topAnchor.constraint(equalTo: view.topAnchor),
			topSpacerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			topSpacerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			topSpacerView.heightAnchor.constraint(equalToConstant: 100),
			
			headerViewTopConstaints!,
			headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			headerView.bottomAnchor.constraint(equalTo: scrollView.topAnchor, constant: 10)
			
		])
	}
}

extension SecondViewController: UIScrollViewDelegate {
	
	func scrollViewDidScroll(_ scrollView: UIScrollView) {
		let y = scrollView.contentOffset.y
		
		let swipingDown = y <= 0
		let shouldSnap = y > 30
		let labelHeight = headerView.headerLabel.frame.height + 16 // label + spacer (102)
		
		UIView.animate(withDuration: 0.3) {
			self.headerView.headerLabel.alpha = swipingDown ? 1.0 : 0.0
		}
		
		UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.3, delay: 0, options: [], animations: {
			self.headerViewTopConstaints?.constant = shouldSnap ? -labelHeight : 0
			self.view.layoutIfNeeded()
		})
	}

}
