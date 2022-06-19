//
//  FolderTableVC.swift
//  3_Memo
//
//  Created by 강주원 on 2022/06/14.
//

import UIKit

class FolderTableVC: UITableViewController {

	var folders = [Folder]() 
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		if let savedFolders = Folder.loadFolders() {
			folders = savedFolders
		} else {
			folders = Folder.loadFolderSamples()
		}
		
		navigationItem.leftBarButtonItem = editButtonItem
		editButtonItem.tintColor = .systemRed
    }
		
	
	// MARK: - Add New Folder with Alert
	@IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
		let alert = UIAlertController(title: "New Folder", message: "Enter New Folder Name", preferredStyle: .alert)
		let save = UIAlertAction(title: "Save", style: .default) { (save) in
			let title = alert.textFields?[0].text
			let newIndexPath = IndexPath(row: self.folders.count, section: 0)
//			self.folders.append(Folder(title: title ?? ""))
			self.folders.append(Folder(title: title ?? "", content: nil))
			self.tableView.insertRows(at: [newIndexPath], with: .automatic)

		}
		let cancel = UIAlertAction(title: "Cancel", style: .cancel)
		
		alert.addAction(cancel)
		alert.addAction(save)
		alert.addTextField { (myTextField) in
			myTextField.placeholder = "Enter New Folder Name"
		}
		
		self.present(alert, animated: true, completion: nil)
	}
	
    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return folders.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FolderCellIdentifier", for: indexPath)

		let folder = folders[indexPath.row]
		var content = cell.defaultContentConfiguration()
		content.image = UIImage(systemName: "folder")
		content.imageProperties.tintColor = .systemRed
		content.text = folder.title
		cell.contentConfiguration = content

        return cell
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    } // ***************** 뭐임

	// Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
			folders.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
	// MARK: - View & Send Data to selected Folder's memo list
	
	@IBSegueAction func goToMemoList(_ coder: NSCoder, sender: Any?) -> MemoTableVC? {
		
		let goToMemoListController = MemoTableVC(coder: coder)
		
		guard let cell = sender as? UITableViewCell,
			  let indexPath = tableView.indexPath(for: cell) else {
			return goToMemoListController
		}
		
		tableView.deselectRow(at: indexPath, animated: true)
		goToMemoListController?.memoes = folders[indexPath.row].content ?? []
		goToMemoListController?.navigationItem.title = folders[indexPath.row].title
		
		return goToMemoListController
	}
}
