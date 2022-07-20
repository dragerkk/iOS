//
//  RankViewController.swift
//  6_MemoryGame
//
//  Created by 강주원 on 2022/07/12.
//

import UIKit

class RankViewController: UIViewController {
//class RankViewController: BaseViewController {

	@IBOutlet weak var label1: UILabel!
	@IBOutlet weak var label2: UILabel!
	@IBOutlet weak var label3: UILabel!
	@IBOutlet weak var label4: UILabel!
	@IBOutlet weak var label5: UILabel!
	
	let ranking = Rank()
	lazy var rank = ranking.rank
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		label1.text = "1st : \(String(rank[4]))"
		label2.text = "2nd : \(String(rank[3]))"
		label3.text = "3rd : \(String(rank[2]))"
		label4.text = "4th : \(String(rank[1]))"
		label5.text = "5th : \(String(rank[0]))"
    }
    
}
