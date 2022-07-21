//
//  MainViewController.swift
//  6_MemoryGame
//
//  Created by 강주원 on 2022/07/11.
//

import UIKit
import KakaoSDKCommon
import KakaoSDKAuth
import KakaoSDKUser

class MainViewController: UIViewController {

	@IBOutlet weak var kakaoLoginButton: UIButton!
	@IBOutlet weak var naverLoginButton: UIButton!
	@IBOutlet weak var logoutButton: UIButton!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		logoutButton.isHidden = true

        // Do any additional setup after loading the view.
    }
	
	// MARK: - Kakao Login
	@IBAction func kakaoLoginAction(_ sender: Any) {
		if (UserApi.isKakaoTalkLoginAvailable()) {
			UserApi.shared.loginWithKakaoTalk { (oauthToken, error) in
				if let error = error {
					print(error)
				}
				else {
					print("loginWithKakaoTalk() success.")
					_ = oauthToken
					self.kakaoLoginButton.isHidden = true
					self.naverLoginButton.isHidden = true
					self.logoutButton.isHidden = false
				}
			}
		}
	}
	
	// MARK: - Logout
	
	@IBAction func logoutAction(_ sender: Any) {
		UserApi.shared.logout {(error) in
			if let error = error {
				print(error)
			} else {
				print("logout() success.")
				self.logoutButton.isHidden = true
				self.kakaoLoginButton.isHidden = false
				self.naverLoginButton.isHidden = false
			}
		}
	}
	
	
	

}
