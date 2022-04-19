//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    let eggTimes = [
        "Soft" : 3,
        "Medium" : 4,
        "Hard" : 7
    ]
    
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    var audio: AVPlayer!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)

        progressBar.progress = 1.0

    }
    
    @objc func updateCounter() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            
            let percentageProgress = Float(secondsPassed) / Float(totalTime)
            print(percentageProgress)
            progressBar.progress  = percentageProgress
            

        } else {
            timer.invalidate()
            titleLabel.text = "Done"
            
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            audio = AVPlayer.init(url: url!)
            audio.play()
        }
    }
    
}

