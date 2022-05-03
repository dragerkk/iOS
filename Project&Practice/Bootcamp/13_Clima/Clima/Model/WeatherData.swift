//
//  WeatherData.swift
//  Clima
//
//  Created by 강주원 on 2022/05/01.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable { // Codable == Decodable & Encodable
	let name: String
	let main: Main
	let weather: [Weather]
}

struct Main: Codable {
	let temp: Double
}

struct Weather: Codable {
	let id : Int
	let description : String
}

