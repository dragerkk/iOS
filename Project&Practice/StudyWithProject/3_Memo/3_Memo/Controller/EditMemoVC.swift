//
//  WriteMemoVC.swift
//  3_Memo
//
//  Created by 강주원 on 2022/06/15.
//

import UIKit

class EditMemoVC: UIViewController {
	
	static let identifier = "EditMemoVCIdentifier"
	
	var memo: Memo?
	
	@IBOutlet weak var memoTextView: UITextView!
	@IBOutlet weak var saveButton: UIBarButtonItem!
	
	

    override func viewDidLoad() {
        super.viewDidLoad()

		if let memo = memo {
			memoTextView.text = memo.title + (memo.desc ?? "") + (memo.content ?? "")
		}
    }
    
	override func viewDidAppear(_ animated: Bool) {
		memoTextView.becomeFirstResponder()
	}
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		self.view.endEditing(true)
	}
	

    
    // MARK: - Send edited data to MemoVC

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
		super.prepare(for: segue, sender: sender)
		
		guard segue.identifier == "Save" else { return }
		
		var title: String {
			return memoTextView.text.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: .newlines).first ?? "" //return first line
		}
		let finalDate = Date()
		var desc: String {
			var lines = memoTextView.text.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: .newlines)
			lines.removeFirst()
//			return "\(finalDate.formatted()) \(lines.first ?? "")" //return second line.
			return lines.first ?? "" //return second line.
		}
		let content = memoTextView.text
		
		if memo != nil { // in Edit memo
			memo?.title = title
			memo?.desc = desc
			memo?.content = content
			memo?.finalDate = finalDate
		} else { // in New memo
			memo = Memo(title: title, desc: desc, content: content, finalDate: finalDate)
		}
    }

}
