//
//  ListSection.swift
//  2_CloneScreen
//
//  Created by 강주원 on 2022/06/08.
//

import Foundation

enum ListSection {
//	3'11''
	case firstCell([ListItem])
	case secondCell([ListItem])
	case thirdCell([ListItem])
	case fourthCell([ListItem])
	case fifthCell([ListItem])
	
	var items: [ListItem] {
		switch self {
		case .firstCell(let items),
				.secondCell(let items),
				.thirdCell(let items),
				.fourthCell(let items),
				.fifthCell(let items):
			return items
		}
	}
	
	var count: Int {
		return items.count
	}
}
