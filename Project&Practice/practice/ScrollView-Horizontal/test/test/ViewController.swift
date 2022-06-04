//
//  ViewController.swift
//  test
//
//  Created by 강주원 on 2022/06/02.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

	@IBOutlet weak var image1: UIImageView!
	
	let url = URL(string:"https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png?201812022340")
	
	override func viewDidLoad() {
		super.viewDidLoad()
		image1.kf.setImage(with: url)
		
		// Do any additional setup after loading the view.
		
	}


}

