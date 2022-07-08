//
//  SoundManage.swift
//  6_MemoryGame
//
//  Created by 강주원 on 2022/07/09.
//

import Foundation
import AVFoundation

class SoundManage {
	var audioPlayer: AVAudioPlayer?
	
	func playBGM() {
		var soundFileName = "bgm"
		
		guard let bundlePath = Bundle.main.path(forResource: soundFileName, ofType: ".wav") else { return }
		
		let url = URL(fileURLWithPath: bundlePath)
		do {
			audioPlayer = try AVAudioPlayer(contentsOf: url)
			
			audioPlayer?.play()
		} catch let error {
			print("\(error.localizedDescription)")
			return
		}
	}
}
