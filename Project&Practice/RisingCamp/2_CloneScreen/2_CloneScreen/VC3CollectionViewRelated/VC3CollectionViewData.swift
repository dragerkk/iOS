//
//  VC3CollectionViewData.swift
//  2_CloneScreen
//
//  Created by 강주원 on 2022/06/10.
//

import Foundation
import UIKit

struct VC3CollectionViewData {
	static let shared = VC3CollectionViewData()
	
	private let menuCell: VC3ListSection = {
		.menuCell([
			.init(image: "m1"),
			.init(image: "m2"),
			.init(image: "m3"),
			.init(image: "m4"),
			.init(image: "m5"),
			.init(image: "m6"),
			.init(image: "m7"),
			.init(image: "m8"),
			.init(image: "m9"),
			.init(image: "m10"),
		])
	}()
	
	private let bottomCell: VC3ListSection = {
		.bottomCell([
			.init(image: "bottom")])
	}()
	
	var pagaData: [VC3ListSection] {
		[menuCell, bottomCell]
	}
}
