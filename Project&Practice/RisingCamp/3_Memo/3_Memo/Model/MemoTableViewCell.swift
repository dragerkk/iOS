//
//  MemoTableViewCell.swift
//  3_Memo
//
//  Created by 강주원 on 2022/06/15.
//

import UIKit

class MemoTableViewCell: UITableViewCell {
	
	static let identifier = "MemoCellIdentifier"
	
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var descriptionLabel: UILabel!
	
	func setup(memo: Memo) {
		titleLabel.text = memo.title
		descriptionLabel.text = memo.desc
	}
}
	
