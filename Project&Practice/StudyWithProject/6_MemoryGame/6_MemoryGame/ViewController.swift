//
//  ViewController.swift
//  6_MemoryGame
//
//  Created by 강주원 on 2022/07/05.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
	@IBOutlet weak var test: UIView!
	
	private var imageView : UIImageView = {
		let kkk = UIImageView()
//		kkk.image = UIImage(named: "111")
		kkk.image = UIImage(systemName: "sun.min")?.withTintColor(.red, renderingMode: .alwaysOriginal)
//		kkk.contentMode = .scaleAspectFit
		return kkk
	} ()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		
		self.test.addSubview(self.imageView)
		imageView.snp.makeConstraints {
			$0.leading.trailing.top.equalToSuperview()
		}
			
		
	}


}

