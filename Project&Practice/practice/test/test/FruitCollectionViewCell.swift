//
//  CollectionViewCell.swift
//  test
//
//  Created by 강주원 on 2022/06/07.
//

import UIKit

class FruitCollectionViewCell: UICollectionViewCell {
	@IBOutlet weak var fruitImageView: UIImageView!
	@IBOutlet weak var fruitLabel: UILabel!
	
	func setup(with fruit: Fruit) {
		fruitImageView.image = UIImage(named: fruit.imageName)
		fruitLabel.text = fruit.title
	}
	
}
