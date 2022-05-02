//
//  WeatherManager.swift
//  Clima
//
//  Created by 강주원 on 2022/04/30.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
	// http 가 아닌 https를 사용해야 한다?!
	let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=83ba97ae4ea9e6a8ca0b14ebcadede50&units=metric"
	
	func fetchWeather(cityName: String) {
		let urlString = "\(weatherURL)&q=\(cityName)"
		performRequest(urlString: urlString)
	}
	
	func performRequest(urlString: String) {
		// ---Networking---
		// 1. Create a URL
		if let url = URL(string: urlString) {
			// 2. Create a URLSession
			let session = URLSession(configuration: .default)
			
			
			// 3. Give the session a task
			// let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
			let task = session.dataTask(with: url) { (data, response, error) in
				if error != nil {
					print(error!)
					return // exit out of this function.
				}
				
				if let safeData = data {
					parseJSON(weatherData: safeData)
				}
			}
			// 4. Start the task
			task.resume()
		}
	}
	
	
	//func handle(data: Data?, response: URLResponse?, error: Error?) {
	//	if error != nil {
	//		print(error!)
	//		return // exit out of this function.
	//	}
	//
	//	if let safeData = data {
	//		let dataString = String(data: safeData, encoding: .utf8) // utf8 : 웹사이트에서 encoding 표준규격인듯?
	//		print(dataString)
	//	}
	//}
	
	
	
	// -------JSON
	
	func parseJSON(weatherData: Data) {
		let decoder = JSONDecoder()
		do {
			let decodedData = try decoder.decode(WeatherData.self, from: weatherData )
			print(decodedData.name)
			print(decodedData.main.temp)
			print(decodedData.weather[0].description)
		} catch {
			print(error)
		}
	}
}
