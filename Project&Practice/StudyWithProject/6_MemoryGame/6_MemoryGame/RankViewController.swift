//
//  RankViewController.swift
//  6_MemoryGame
//
//  Created by 강주원 on 2022/07/12.
//

import UIKit

class RankViewController: UIViewController {

	@IBOutlet weak var label1: UILabel!
	@IBOutlet weak var label2: UILabel!
	@IBOutlet weak var label3: UILabel!
	@IBOutlet weak var label4: UILabel!
	@IBOutlet weak var label5: UILabel!
	
	let ranking = Rank()
	lazy var rank = ranking.rank
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		label1.text = String(rank[0])
		label2.text = String(rank[1])
		label3.text = String(rank[2])
		label4.text = String(rank[3])
		label5.text = String(rank[4])
		
		
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
