//
//  SceneDelegate.swift
//  3_Memo
//
//  Created by 강주원 on 2022/06/13.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	var window: UIWindow?

	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		// Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
		// If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
		// This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
		guard let _ = (scene as? UIWindowScene) else { return }
	}

	func sceneDidDisconnect(_ scene: UIScene) {
		// Called as the scene is being released by the system.
		// This occurs shortly after the scene enters the background, or when its session is discarded.
		// Release any resources associated with this scene that can be re-created the next time the scene connects.
		// The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
	}

	func sceneDidBecomeActive(_ scene: UIScene) {
		// Called when the scene has moved from an inactive state to an active state.
		// Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
		callBackgroundView(false)
	}

	func sceneWillResignActive(_ scene: UIScene) {
		// Called when the scene will move from an active state to an inactive state.
		// This may occur due to temporary interruptions (ex. an incoming phone call).
		callBackgroundView(true)
	}

	func sceneWillEnterForeground(_ scene: UIScene) {
		// Called as the scene transitions from the background to the foreground.
		// Use this method to undo the changes made on entering the background.
		callBackgroundView(false)
	}

	func sceneDidEnterBackground(_ scene: UIScene) {
		// Called as the scene transitions from the foreground to the background.
		// Use this method to save data, release shared resources, and store enough scene-specific state information
		// to restore the scene back to its current state.
		
		callBackgroundView(true)
	}


}

extension SceneDelegate {
	func callBackgroundView(_ getBool: Bool) {
		let TAG_BG = -101
		let backgroundView = window?.rootViewController?.view.window?.viewWithTag(TAG_BG)
		
		if getBool {
			if backgroundView == nil {
				let bgView = UIView()
				bgView.frame = UIScreen.main.bounds
				bgView.tag = TAG_BG
				bgView.backgroundColor = .black
				
				let label = UILabel()
				label.frame = UIScreen.main.bounds
				label.textAlignment = .center
				label.font = UIFont.systemFont(ofSize: 30)
				label.textColor = .yellow
				label.numberOfLines = 0
				label.text = "응 안보임"
				bgView.addSubview(label)
				
				window?.rootViewController?.view.window?.addSubview(bgView)
			}
		} else {
			if let backgroundView = backgroundView {
				backgroundView.removeFromSuperview()
			}
		}
	}
}
