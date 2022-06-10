//
//  CollectionViewData.swift
//  2_CloneScreen
//
//  Created by 강주원 on 2022/06/08.
//

import Foundation

struct CollectionViewData {
	static let shared = CollectionViewData()
	
	private let firstCell: ListSection = {
		.firstCell([
			.init(title: "", image: "1_image"),
			.init(title: "", image: "2_image"),
			.init(title: "", image: "3_image")])
	}()
		
	private let secondCell: ListSection = {
		.secondCell([
			.init(title: "", image: "4_b1"),
			.init(title: "", image: "4_b2"),
			.init(title: "", image: "4_b3"),
			.init(title: "", image: "4_b4"),
			.init(title: "", image: "4_b5"),
			.init(title: "", image: "4_b6"),
			.init(title: "", image: "4_b7"),
			.init(title: "", image: "4_b8"),
			.init(title: "", image: "4_b9")])
	}()
	
	private let thirdCell: ListSection = {
		.thirdCell([
			.init(title: "", image: "5_image"),
			.init(title: "", image: "6_image")])
	}()
	
	private let fourthCell: ListSection = {
		.fourthCell([
			.init(title: "", image: "7_i1"),
			.init(title: "", image: "7_i2"),
			.init(title: "", image: "7_i3"),
			.init(title: "", image: "7_i4"),
			.init(title: "", image: "7_i5"),
			.init(title: "", image: "7_i6"),
			.init(title: "", image: "7_i7"),
			.init(title: "", image: "7_i8")])
	}()
	
	private let fifthCell: ListSection = {
		.fifthCell([
			.init(title: "", image: "8_image"),
			.init(title: "", image: "9_image"),
			.init(title: "", image: "10_image"),
			.init(title: "", image: "11_image"),
			.init(title: "", image: "12_image")])
	}()
	
	var pageData: [ListSection] {
		[firstCell, secondCell, thirdCell, fourthCell, fifthCell]
	}
	
}
