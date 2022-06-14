//
//  Folder.swift
//  3_Memo
//
//  Created by 강주원 on 2022/06/15.
//

import Foundation

struct Folder {
	let id = UUID()
	let title: String
	
	static func loadFolders() -> [Folder]? {
		return nil
	}
	
	static func loadFolderSamples() -> [Folder] {
		let folder1 = Folder(title: "Simple memo")
		let folder2 = Folder(title: "cooking recipes")
		
		return [folder1, folder2]
	}

	
}
