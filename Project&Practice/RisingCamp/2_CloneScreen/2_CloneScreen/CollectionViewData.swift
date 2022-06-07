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
			.init(image: "1_image"),
			.init(image: "2_image"),
			.init(image: "3_image")])
	}()
	
	private let secondCell: ListSection = {
		.secondCell([
			.init(image: "4_b1"),
			.init(image: "4_b2"),
			.init(image: "4_b3"),
			.init(image: "4_b4"),
			.init(image: "4_b5"),
			.init(image: "4_b6"),
			.init(image: "4_b7"),
			.init(image: "4_b8"),
			.init(image: "4_b9")])
	}()
	
	private let thirdCell: ListSection = {
		.thirdCell([
			.init(image: "5_image"),
			.init(image: "6_image")])
	}()
	
	private let fourthCell: ListSection = {
		.fourthCell([
			.init(image: "7_i1"),
			.init(image: "7_i2"),
			.init(image: "7_i3"),
			.init(image: "7_i4"),
			.init(image: "7_i5"),
			.init(image: "7_i6"),
			.init(image: "7_i7"),
			.init(image: "7_i8")])
	}()
	
	private let fifthCell: ListSection = {
		.fifthCell([
			.init(image: "8_image"),
			.init(image: "9_image"),
			.init(image: "10_image"),
			.init(image: "11_image"),
			.init(image: "12_image")])
	}()
	
	var pageData: [ListSection] {
		[firstCell, secondCell]
//		, thirdCell, fourthCell, fifthCell]
	}
	
}
