//
//  Rank.swift
//  6_MemoryGame
//
//  Created by 강주원 on 2022/07/11.
//

import Foundation

struct Rank {
	var rank: [Int] = [0,0,0,0,0]
	
	mutating func checkRank(score:Int) {
		if rank[0] < score {
			rank.removeFirst()
			rank.append(score)
		}
		rank.sort()
		updateUserDefault()
	}
	
	func updateUserDefault() {
		for i in 0..<rank.count {
			UserDefaults.standard.set(rank[i], forKey: String(i+1))
		}
	}
}
