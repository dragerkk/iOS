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

    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {

//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
		return memoes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemoCellIdentifier", for: indexPath) as! MemoTableViewCell
		cell.setup(memo: memoes[indexPath.row])

        return cell
    }
    

    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
			memoes.remove(at:indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
	@IBAction func unwindToMemoVC(segue: UIStoryboardSegue) {
		guard segue.identifier == "Save" else { return }
		let sourceViewController = segue.source as! EditMemoVC
		
		if let memo = sourceViewController.memo {
			let newIndexPath = IndexPath(row: memoes.count, section: 0)
			
			memoes.append(memo)
			tableView.insertRows(at: [newIndexPath], with: .automatic)
		}
		
	}

}
