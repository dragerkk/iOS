//
//  SecondCollectionViewCell.swift
//  2_CloneScreen
//
//  Created by 강주원 on 2022/06/08.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {
	@IBOutlet weak var cellImageView: UIImageView!
	
	func setup(_ item: ListItem) { // item : ListItem
		cellImageView.image = UIImage(named: item.image)
	}
}
