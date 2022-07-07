//
//  Card.swift
//  6_MemoryGame
//
//  Created by 강주원 on 2022/07/07.
//

import UIKit

struct Card {
	
	var cardImage: UIImage
	enum Side {
		case front
		case back
	}
}

enum Level:Int {
	case easy = 1
	case hard = 2
}

extension Card {
	
	static var allImage: [Card] {
		return [
			.init(cardImage: UIImage(systemName: "hare.fill")!)
		]
	}
	
	static func numberOfCards(level: Int) -> Int {
		if level == 1 {
			return 4*4
		} else {
			return 5*6
		}
	}
	
	static func cards(level: Level) -> [Card] {
		let cards = allImage.shuffled().prefix(numberOfCards(level: level.rawValue)/2)
		return cards.shuffled() + cards.shuffled()
	}
	
}
