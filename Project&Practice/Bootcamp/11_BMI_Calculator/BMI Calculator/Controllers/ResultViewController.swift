//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by 강주원 on 2022/04/23.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
	
	var bmiValue : String?

	@IBOutlet weak var bmiLabel: UILabel!
	@IBOutlet weak var adviceLabel: UILabel!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		bmiLabel.text = bmiValue
        // Do any additional setup after loading the view.
    }
	@IBAction func recalculatePressed(_ sender: UIButton) {
		self.dismiss(animated: true, completion: nil)// 버튼을 누르면 현재 VC가 사라지게 함 / completion:nil == nothing happens after dismiss
	}
	

    /*
    // MARK: - Navigation ------- cocoatouch class 타입으로 파일을 만들었을 때 자동으로 만들어지는 부분.. segue 하는 뷰컨트롤러에서 아래 매서드 사용하면 됨.
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
