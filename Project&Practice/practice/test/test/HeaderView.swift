//
//  HeaderView.swift
//  test
//
//  Created by 강주원 on 2022/06/09.
//

import UIKit

class HeaderView: UIView {
	
	let greeting = UILabel()
	let inboxButton = UIButton()
	
	override init(frame: CGRect) { //view 만들 때 initializer 필요함
		super.init(frame: .zero)
		
		style() // style component(greeting, inboxButton)
		layout() // do the autolayout and apply the constraints.
		
	}
	
	required init?(coder: NSCoder) { // 얘도 필요함
		fatalError("init(coder:) has not been implemented")
	}
}

extension HeaderView {
	
	func style() { // styling to components
		greeting.translatesAutoresizingMaskIntoConstraints = false // always need to do when doing autolayout
		greeting.font = UIFont.preferredFont(forTextStyle: .largeTitle)
		greeting.text = "Welcome to Header 🤬"
		greeting.numberOfLines = 0
		greeting.lineBreakMode = .byWordWrapping
		
//		inboxButton.translatesAutoresizingMaskIntoConstraints = false
//		inboxButton.setTitleColor(.label, for: .normal)
//		inboxButton.setTitle("Inbox", for: .normal)
		// 이 코드 대신 아래의 makeInboxButtion() 사용
		makeInboxButton()
		
	}
	
	func layout() { // autolayout
		addSubview(greeting)
		addSubview(inboxButton)
		NSLayoutConstraint.activate([
			greeting.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
			// add some system spacing
			// (about 8 points below that top anchor of the superview, multiplier: multiple 8)
			greeting.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
			trailingAnchor.constraint(equalToSystemSpacingAfter: greeting.trailingAnchor, multiplier: 1),
			// equalToSystemSpacing~~ 쓸 때는 anchor 순서(?)도 고려해줘야 함.
			// greeting.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8) : 동일한 결과
			
			inboxButton.topAnchor.constraint(equalToSystemSpacingBelow: greeting.bottomAnchor, multiplier: 2),
			inboxButton.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
			inboxButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
//			inboxButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
			
			inboxButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.25)
			
			
		])
		
	}
}


// MARK: - Factories : set inboxButton
extension HeaderView {
	func makeInboxButton() {
		inboxButton.translatesAutoresizingMaskIntoConstraints = false
		let configuration = UIImage.SymbolConfiguration(scale: .large)
		let image = UIImage(systemName: "envelope", withConfiguration: configuration)
		
		inboxButton.setImage(image, for: .normal)
		inboxButton.imageView?.tintColor = .secondaryLabel
		inboxButton.imageView?.contentMode = .scaleAspectFit
		
		inboxButton.setTitle("Inbox", for: .normal)
		inboxButton.setTitleColor(.secondaryLabel, for: .normal)
		
	}
}
