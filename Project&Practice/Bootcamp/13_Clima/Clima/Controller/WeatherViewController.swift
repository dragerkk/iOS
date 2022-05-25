
import UIKit
import CoreLocation

class WeatherViewController: UIViewController {
	
	@IBOutlet weak var conditionImageView: UIImageView!
	@IBOutlet weak var temperatureLabel: UILabel!
	@IBOutlet weak var cityLabel: UILabel!
	@IBOutlet weak var searchTextField: UITextField!
	
	var weatherManager = WeatherManager()
	let locationManager = CLLocationManager() // getting hold of the current GPS location of the phone
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		locationManager.delegate = self // 얘가 locationManager.requestLocation()과 같은 다른 메서드들보다 먼저(상단에) 와야 함.
		
		locationManager.requestWhenInUseAuthorization() // trigger a permission request
		locationManager.requestLocation() // request the one-time delivery of the user's current location
		// 이 메서드를 실행하면 delegate의 locationManager(_:didUpdateLocations: ) method가 호출됨
		
		searchTextField.delegate = self
		//textfile should report back to VC,, self == current VC
		weatherManager.delegate = self
		//set this class as the delegate
		
	}
	
	
}

//MARK: - UITextFieldDelegate
//위처럼 (MARK: -) 입력하면 WeatherVC를 섹션으로 구분해줌

extension WeatherViewController: UITextFieldDelegate { //Refactoring! uitextfield 관련부분을 따로 뺌
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
}


//MARK: - WeatherManagerDelegate

extension WeatherViewController: WeatherManagerDelegate { //weathermanagerdelegate method 따로 뺌
	func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel) {
		// Model - WeatherManager - func performRequest 부분을 보면, completion handler 이기 때문에 디스패치 해줘야 한다고 함...
		DispatchQueue.main.async {
			self.temperatureLabel.text = weather.temperatureString
			self.conditionImageView.image = UIImage(systemName: weather.conditionName)
		}
		
	}
	
	func didFailWithError(error: Error) {
		print(error)
	}
}


//MARK: - CLLocationManagerDelegate

extension WeatherViewController: CLLocationManagerDelegate {
	
	func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
		if let location = locations.last { // locations는 배열로 되어있고, 가장 최근의 위치값이 배열의 마지막에 저장되어있음
			let lat = location.coordinate.latitude
			let lon = location.coordinate.longitude
			
			weatherManager.fetchWeather(latitude: lat, longitude: lon)
		}
	}
	
	func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
		print(error)
	}

}
