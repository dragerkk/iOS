//
//  WeatherManager.swift
//  Clima
//
//  Created by 강주원 on 2022/04/30.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

protocol WeatherManagerDelegate {
	
	func didUpdateWeather(weather: WeatherModel)
}

struct WeatherManager {
	// http 가 아닌 https를 사용해야 한다?!
	let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=83ba97ae4ea9e6a8ca0b14ebcadede50&units=metric"
	
	var delegate: WeatherManagerDelegate?
	
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
					if let weather = parseJSON(weatherData: safeData) { // parseJSON func -- optional이기 때문에 여기서도 optional binding 사용해줬음
						delegate?.didUpdateWeather(weather: weather )
					}
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
	
	func parseJSON(weatherData: Data) -> WeatherModel? { // 에러 발생시 nil을 반환하기 때문에 optional
		let decoder = JSONDecoder()
		do {
			let decodedData = try decoder.decode(WeatherData.self, from: weatherData )
			
			let id = decodedData.weather[0].id
			let temp = decodedData.main.temp
			let name = decodedData.name
			
			let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
			
			return weather
			
		} catch {
			print(error)
			return nil
		}
	}
	

}
