//
//  WriteMemoVC.swift
//  3_Memo
//
//  Created by 강주원 on 2022/06/15.
//

import UIKit

class WriteMemoVC: UIViewController {
	@IBOutlet weak var memoTextView: UITextView!
	@IBOutlet weak var saveButton: UIBarButtonItem!
	

    override func viewDidLoad() {
        super.viewDidLoad()
		updateSaveButtonState()

        // Do any additional setup after loading the view.
    }
    
	// MARK: updateSaveButtonState - Disable Save Button when memoTextView is empty
	func updateSaveButtonState() {
		let shouldEnableSaveButton = memoTextView.text?.isEmpty == false
		saveButton.isEnabled = shouldEnableSaveButton
	}
	
	@IBAction func textEditingChanged(_ sender: UITextView) {
		updateSaveButtonState()
	}

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
		super.prepare(for: segue, sender: sender)
		
		guard segue.identifier == "Save" else { return }
		
		
    }

}
