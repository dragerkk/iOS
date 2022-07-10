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
	
	enum SoundEffect {
		case flip
		case wrong
		case correct
	}
	
	func playSound(effect: SoundEffect) {
		var soundFileName = ""
		
		switch effect {
		case .flip:
			soundFileName = "flip"
		case .wrong:
			soundFileName = "wrong"
		case .correct:
			soundFileName = "correct"
		}
		
		guard let bundlePath = Bundle.main.path(forResource: soundFileName, ofType: ".wav") else { return }

		let url = URL(fileURLWithPath: bundlePath)
		do {
			// Create the audio Player
			audioPlayer = try AVAudioPlayer(contentsOf: url)
			
			// play
			audioPlayer?.play()
			
		} catch let error {
			print("\(error.localizedDescription)")
			return
		}
		
	}
	
	func playBGM() {
		let soundFileName = "bgm"
		
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
