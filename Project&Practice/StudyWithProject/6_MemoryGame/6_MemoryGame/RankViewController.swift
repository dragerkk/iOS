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
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		
		label1.text = "1st : \(UserDefaults.standard.integer(forKey: "5"))"
		label2.text = "2nd : \(UserDefaults.standard.integer(forKey: "4"))"
		label3.text = "3rd : \(UserDefaults.standard.integer(forKey: "3"))"
		label4.text = "4th : \(UserDefaults.standard.integer(forKey: "2"))"
		label5.text = "5th : \(UserDefaults.standard.integer(forKey: "1"))"

        // Do any additional setup after loading the view.
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
