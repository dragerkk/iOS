//
//  ThirdViewController.swift
//  2_CloneScreen
//
//  Created by 강주원 on 2022/06/10.
//

import UIKit

class ThirdViewController: UIViewController {
	
	@IBOutlet weak var table: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		table.delegate = self
		table.dataSource = self
		
	}
	
	struct Menu {
		let imageName: String
	}
	let menuData: [Menu] = [
	Menu(imageName: "m1"),
	Menu(imageName: "m2"),
	Menu(imageName: "m3"),
	Menu(imageName: "m4"),
	Menu(imageName: "m5"),
	Menu(imageName: "m6"),
	Menu(imageName: "m7"),
	Menu(imageName: "m8"),
	Menu(imageName: "m9"),
	Menu(imageName: "m10"),
	
	]
	
	
}

extension ThirdViewController: UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return menuData.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let menu = menuData[indexPath.row]
		let cell = table.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! MenuTableViewCell
		cell.iconImageView.image = UIImage(named: menu.imageName)
		return cell
	}
}


extension ThirdViewController:UITableViewDelegate {
	
}
