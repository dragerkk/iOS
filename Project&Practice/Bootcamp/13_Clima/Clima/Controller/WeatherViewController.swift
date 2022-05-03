//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate, WeatherManagerDelegate {
	
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
	@IBOutlet weak var searchTextField: UITextField!
	
	var weatherManager = WeatherManager()
	
    override func viewDidLoad() {
        super.viewDidLoad()
        
		searchTextField.delegate = self
		//textfile should report back to VC,, self == current VC
		weatherManager.delegate = self
		//set this class as the delegate
    }

	@IBAction func searchPressed(_ sender: UIButton) {
		print(searchTextField.text!)
		searchTextField.endEditing(true)
	}

	// textField 라는 variable은
	// textField에 입력을 하고 return했을 때
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		print(searchTextField.text!)
		return true
	}
	
	// 사용자가 textfield에 입력도중 다른 곳을 눌렀다던지.. 할 때 어떻게 할건지..?
	func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
		if textField.text != "" {
			return true
		} else { // 입력된 값이 없으면 입력할때까지 가둬버림..
			textField.placeholder = "Type something."
			return false
		}
	}

	// textfield에 입력 끝낸 뒤...
	// func textFieldDidEndEditing 사용하지 않으면 위의 searchPressed(), textFieldShouldReturn()에서 각각 비워줘야 함.
	func textFieldDidEndEditing(_ textField: UITextField) {
		// 1. Use 'searchTextField.text' to get the weather for that city.
		// 2. API에 접근!
		// 3. 입력된 값을 비워줌 (계속 남아있으면 보기싫으니까..)
		
		if let city = searchTextField.text {
			weatherManager.fetchWeather(cityName: city)
		}
		
		searchTextField.text = ""
		
	}
	
	func didUpdateWeather(weather: WeatherModel) {
		print(weather.temperature)
	}
}



