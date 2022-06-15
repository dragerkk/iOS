//
//  Memo.swift
//  3_Memo
//
//  Created by 강주원 on 2022/06/14.
//

import UIKit

struct Memo {
//	let id = UUID()
	var title: String
	var content: String?
	var finalDate: Date
	
	
	static func loadMemoes() -> [Memo]? {
		return nil
	}
	
	static func loadSamples() -> [Memo] {
		
		let memo1 = Memo(title: "make memo app", content: "until saturday", finalDate: Date())
		let memo2 = Memo(title: "삼겹살", content: "먹고싶다", finalDate: Date())

		return [memo1, memo2]
	}

}
