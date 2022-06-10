//
//  BottomCollectionViewCell.swift
//  2_CloneScreen
//
//  Created by 강주원 on 2022/06/10.
//

import UIKit

class BottomCollectionViewCell: UICollectionViewCell {
	@IBOutlet weak var cellImageView: UIImageView!
	
	func setup(_ item: VC3ListItem) {
		cellImageView.image = UIImage(named: item.image)
	}
}
