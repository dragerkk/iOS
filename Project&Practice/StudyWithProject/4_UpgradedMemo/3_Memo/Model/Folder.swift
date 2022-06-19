//
//  Folder.swift
//  3_Memo
//
//  Created by 강주원 on 2022/06/15.
//

import Foundation

struct Folder {
//	let id = UUID()
	let title: String
	let content: [Memo]?
	
	static func loadFolders() -> [Folder]? {
		return nil
	}
	
	static func loadFolderSamples() -> [Folder] {
//		let folder1 = Folder(title: "Default Folder")
//		let folder2 = Folder(title: "Recipes")
		let folder1 = Folder(title: "Default Folder", content: Memo.folderSample1())
		let folder2 = Folder(title: "cooking recipes", content: Memo.folderSample2())
		
		return [folder1, folder2]
	}

	
}
