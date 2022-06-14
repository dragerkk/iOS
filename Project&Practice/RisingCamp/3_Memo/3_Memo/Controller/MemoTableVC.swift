//
//  MemoTableVC.swift
//  3_Memo
//
//  Created by 강주원 on 2022/06/15.
//

import UIKit

class MemoTableVC: UITableViewController {

	var memoes = [Memo]()
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		if let savedMemoes = Memo.loadMemoes() {
			memoes = savedMemoes
		} else {
			memoes = Memo.loadSamples()
		}
		
		self.navigationController?.isToolbarHidden = false

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

	
//	// MARK: - Toolbar
//	func toolbarSetting() {
//		let toolbar = UIToolbar(frame: .init(x: 0, y: 0, width: 100, height: 100))
//		view.addSubview(toolbar)
//		
//		toolbar.translatesAutoresizingMaskIntoConstraints = false
//		NSLayoutConstraint.activate([
//			toolbar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
//			toolbar.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
//			toolbar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//		])
//		
//		var items: [UIBarButtonItem] = []
//		let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
//		let toolbarItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector(writeMemoButtonTapped))
//		
//		items.append(flexibleSpace)
//		items.append(toolbarItem)
//		
//		items.forEach { (item) in
//			item.tintColor = .systemRed
//		}
//		
//		toolbar.setItems(items, animated: true)
//	}
//	
//	@objc func writeMemoButtonTapped() {
//		let storyboard = UIStoryboard(name: "WriteMemo", bundle: nil)
//		let vc = storyboard.instantiateViewController(withIdentifier: "WriteMemoVCIdentifier") as! WriteMemoVC
//		
//	}
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
		return memoes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemoCellIdentifier", for: indexPath)

		let memo = memoes[indexPath.row]
		var content = cell.defaultContentConfiguration()
		
		content.text = memo.title
		cell.contentConfiguration = content

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
