//
//  CollectionViewHeaderReusableView.swift
//  2_CloneScreen
//
//  Created by 강주원 on 2022/06/08.
//

import UIKit

class CollectionViewHeaderReusableView: UICollectionReusableView {
	@IBOutlet weak var cellTitleLabel: UILabel!
	
	func setup(title: String) {
		cellTitleLabel.text = title
	}
}
