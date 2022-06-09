//
//  HeaderView.swift
//  2_CloneScreen
//
//  Created by 강주원 on 2022/06/10.
//

import UIKit

class HeaderView: UIView {
	
	let headerLabel = UILabel()
	
	override init(frame: CGRect) {
		super.init(frame: .zero)
		style()
		layout()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}

extension HeaderView {
	func style() {
		backgroundColor = .white
		
		headerLabel.translatesAutoresizingMaskIntoConstraints = false
		headerLabel.font = UIFont.boldSystemFont(ofSize: 30)
		headerLabel.text = "Pay"
		
		headerLabel.numberOfLines = 0
		headerLabel.lineBreakMode = .byWordWrapping
		
		
	}
	
	func layout() {
		addSubview(headerLabel)
		
		NSLayoutConstraint.activate([
			headerLabel.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
			headerLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
			trailingAnchor.constraint(equalToSystemSpacingAfter: headerLabel.trailingAnchor, multiplier: 1),
			
		])
		
		
	}
	
	override var intrinsicContentSize: CGSize {
		return CGSize(width: 100, height: 100)
	}
}
