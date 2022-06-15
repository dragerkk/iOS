//
//  Memo.swift
//  3_Memo
//
//  Created by 강주원 on 2022/06/14.
//

import UIKit

struct Memo: Equatable {
	let id = UUID()
	var title: String
	var desc: String?
	var content: String?
	var finalDate: Date
	
	static func ==(lhs: Memo, rhs: Memo) -> Bool {
		return lhs.id == rhs.id
	}
	
	static func loadMemoes() -> [Memo]? {
		return nil
	}
	
	static func loadSamples() -> [Memo] {
		
		let memo1 = Memo(title: "make memo app", desc: "until saturday", content: "make memo app\nuntil saturday\ngogogogogogo", finalDate: Date())
		let memo2 = Memo(title: "삼겹살", desc: "먹고싶다", content: "삼겹살\n먹고싶다\n지금당장", finalDate: Date())

		return [memo1, memo2]
	}
	

}
