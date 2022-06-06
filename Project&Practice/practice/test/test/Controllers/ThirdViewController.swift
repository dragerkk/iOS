//
//  ThirdViewController.swift
//  test
//
//  Created by 강주원 on 2022/06/06.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController {
	
	@IBOutlet weak var table: UITableView!

	struct Hyolee {
		let title: String
		let imageName: String
	}
	
	let data: [Hyolee] = [
		Hyolee(title: "forehead", imageName: "hr1"),
		Hyolee(title: "eye", imageName: "hr2"),
		Hyolee(title: "nose", imageName: "hr3"),
		Hyolee(title: "lip", imageName: "hr4"),
		Hyolee(title: "shoulder", imageName: "hr5"),
		Hyolee(title: "top", imageName: "hr6"),
	]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		table.dataSource = self
		table.delegate = self
	}
}

extension ThirdViewController: UITableViewDataSource { 
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let hyolee = data[indexPath.row]
		let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
		cell.label.text = hyolee.title
		cell.iconImageView.image = UIImage(named: hyolee.imageName)
		return cell
	}
	
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return data.count
	}

}

extension ThirdViewController: UITableViewDelegate {
//	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//		return 200
//	} // 각각의 cell의 height
}
