//
//  HeaderView.swift
//  2_CloneScreen
//
//  Created by 강주원 on 2022/06/09.
//

import UIKit

class FirstHeaderView: UIView {
	
	let headerLabel = UILabel()
	let headerImageView = UIImageView()
	let headerView = UIView()
	let inboxButton = UIButton()
	
	override init(frame: CGRect) {
		super.init(frame: .zero)
		style()
		layout()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}

extension FirstHeaderView {
	func style() {
		backgroundColor = .white
		
		headerLabel.translatesAutoresizingMaskIntoConstraints = false
		headerLabel.font = UIFont.preferredFont(forTextStyle: .headline)
		headerLabel.text =
"""
안녕하세요.
스타벅스입니다.
"""
		headerLabel.numberOfLines = 0
		headerLabel.lineBreakMode = .byWordWrapping
		
		makeHeaderImageView()
		
		headerView.translatesAutoresizingMaskIntoConstraints = false
		makeInboxButton()
		
	}
	
	func layout() {
		addSubview(headerLabel)
		addSubview(headerImageView)
		addSubview(headerView)
		headerView.addSubview(inboxButton)
		
		
		NSLayoutConstraint.activate([
			headerLabel.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
			headerLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
			trailingAnchor.constraint(equalToSystemSpacingAfter: headerLabel.trailingAnchor, multiplier: 1),

			headerImageView.topAnchor.constraint(equalToSystemSpacingBelow: headerLabel.bottomAnchor, multiplier: 1),
			headerImageView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
			headerImageView.trailingAnchor.constraint(equalToSystemSpacingAfter: trailingAnchor, multiplier: 1),
//			headerImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2),

			headerView.topAnchor.constraint(
				equalToSystemSpacingBelow: headerImageView.bottomAnchor, multiplier: 2),
			headerView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
			trailingAnchor.constraint(equalToSystemSpacingAfter: headerView.trailingAnchor, multiplier: 2),
			bottomAnchor.constraint(equalToSystemSpacingBelow: headerView.bottomAnchor, multiplier: 1),

			inboxButton.topAnchor.constraint(equalTo: headerView.topAnchor),
			inboxButton.leadingAnchor.constraint(equalTo: headerView.leadingAnchor),
			inboxButton.widthAnchor.constraint(equalTo: headerView.widthAnchor, multiplier: 0.4)
//
		])
		
		
	}
	
	override var intrinsicContentSize: CGSize {
		return CGSize(width: 100, height: 100)
	}
}

// MARK: -
extension FirstHeaderView {
	
	func makeHeaderImageView() {
		headerImageView.translatesAutoresizingMaskIntoConstraints = false
		
		let image = UIImage(named: "headerImage")
		
		headerImageView.image = image
		
		
//		headerImageView.frame.size.height = 200
		headerImageView.contentMode = .scaleAspectFit
	}
	
	func makeInboxButton() {
		inboxButton.translatesAutoresizingMaskIntoConstraints = false
		
		let image = UIImage(named: "inboxButton")
		
		inboxButton.setImage(image, for: .normal)
		inboxButton.imageView?.tintColor = .secondaryLabel
		inboxButton.imageView?.contentMode = .scaleAspectFit
		
		inboxButton.setTitle("", for: .normal)
		inboxButton.setTitleColor(.secondaryLabel, for: .normal)
	}
}
