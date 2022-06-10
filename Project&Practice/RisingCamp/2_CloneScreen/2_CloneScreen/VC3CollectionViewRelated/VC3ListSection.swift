//
//  VC3ListSection.swift
//  2_CloneScreen
//
//  Created by 강주원 on 2022/06/10.
//

import Foundation

enum VC3ListSection {
	
	case menuCell([VC3ListItem])
	case bottomCell([VC3ListItem])
	
	var items: [VC3ListItem] {
		switch self {
		case .menuCell(let items),
				.bottomCell(let items):
			return items
		}
	}
	
	var count: Int {
		return items.count
	}
	
}
