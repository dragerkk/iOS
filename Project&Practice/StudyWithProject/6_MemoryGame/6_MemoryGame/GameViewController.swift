//
//  ViewController.swift
//  6_MemoryGame
//
//  Created by 강주원 on 2022/07/05.
//

import UIKit

class GameViewController: UIViewController {
	
	@IBOutlet weak var collectionView: UICollectionView!
	@IBOutlet weak var timerLabel: UILabel!
	@IBOutlet weak var scoreLabel: UILabel!
	
	let model = CardModel()
	var cards: [Card] = []
	
	var timer: Timer?
	var timeLimit: Int = 30

	var firstCardIndex: IndexPath?
	
	var soundPlayer = SoundManage()
	
	var score: Int = 0
	var rank = Rank()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		cards = model.getCards()
		
		collectionView.delegate = self
		collectionView.dataSource = self
		
		let flowLayout = UICollectionViewFlowLayout()
		flowLayout.sectionInset = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
		flowLayout.itemSize = CGSize(width: 70, height: 70)
		flowLayout.scrollDirection = .vertical
		collectionView.collectionViewLayout = flowLayout
		collectionView.backgroundColor = view.backgroundColor
		
		//timer
		timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerStart), userInfo: nil, repeats: true)
		RunLoop.main.add(timer!, forMode: .common)
		
		//score
		getScore(score)
	}
	
	// restart Game
	@IBAction func restartButtonTapped(_ sender: Any) {
		timeLimit = 30
		cards = model.getCards()
		
	}
	
	
	// MARK: - play BGM
	override func viewDidAppear(_ animated: Bool) {
		soundPlayer.playSound(soundName: .bgm)
	}
	
	// MARK: - Timer
	@objc func timerStart() {
		timeLimit -= 1
		
		timerLabel.text = "time limit: \(timeLimit)"
		if timeLimit == 0 {
			timerLabel.text = "time up."
			timer?.invalidate()
			
			//check if user win the game. -- collectionview delegate
			checkForGameEnd()
		}
	}
	
	// MARK: - Score

	func getScore(_ score:Int) {
		scoreLabel.text = String(score)
	}
	
	// MARK: - check match / game end
	func checkForMatch(secondCardIndex: IndexPath) {
		
		let firstCard = cards[firstCardIndex!.row]
		let secondCard = cards[secondCardIndex.row]
		
		let firstCardCell = collectionView.cellForItem(at: firstCardIndex!) as? CardCell
		let secondCardCell = collectionView.cellForItem(at: secondCardIndex) as? CardCell
		
		//compare cards
		if firstCard.imageName == secondCard.imageName {
			
			soundPlayer.playSound(soundName: .correct)
			
			firstCard.isMatched = true
			secondCard.isMatched = true
			
			firstCardCell?.removeCard()
			secondCardCell?.removeCard()
			
			//
			score += 10
			getScore(score)
			
			checkForGameEnd()
		} else {
			
			soundPlayer.playSound(soundName: .wrong)
			
			firstCard.isFlipped = false
			secondCard.isFlipped = false
			
			firstCardCell?.flipToBack()
			secondCardCell?.flipToBack()
			
			score -= 2
			getScore(score)
		}
		
		// reset firstCardIndex to nil for next match
		self.firstCardIndex = nil
	}
	
	func checkForGameEnd() {
		
		var userWon: Bool = true
		
		for card in cards {
			if !card.isMatched {
				userWon = false
				break
			}
		}
		
		if userWon {
			timerLabel.text = "Congratulations!"
			showAlert(title: "Wow", message: "You Win")
			soundPlayer.stopBGM()
			
			timer?.invalidate()
			score += timeLimit * 5
			getScore(score)
			
			rank.checkRank(score: score)
			
			for i in 1...5 {
				print(UserDefaults.standard.integer(forKey: String(i)))
			}

		} else {
			if timeLimit <= 0 {
				showAlert(title: "Game Over", message: "You can do better")
				soundPlayer.stopBGM()
				
				for i in 1...5 {
					print(UserDefaults.standard.integer(forKey: String(i)))
				}
			}
		}
	}
	
	func showAlert(title: String, message: String) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		let okAction = UIAlertAction(title: "OK", style: .default)
		alert.addAction(okAction)
		present(alert, animated: true, completion: nil)
	}
	



	// MARK: - Restart
}


// MARK: - collectionView Delegate

extension GameViewController: UICollectionViewDelegate {
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		
		if timeLimit <= 0 {
			return
		}
		
		guard let cell = collectionView.cellForItem(at: indexPath) as? CardCell else {
			return
		}
		
		// card flip
		if cell.card?.isFlipped == false && cell.card?.isMatched == false {
			cell.flipToFront()
			
			soundPlayer.playSound(soundName: .flip)
			
			if firstCardIndex == nil {
				firstCardIndex = indexPath
			} else {
				checkForMatch(secondCardIndex: indexPath)
			}
		}
		
	}

	
}


// MARK: - collectionView Datasource
extension GameViewController: UICollectionViewDataSource {
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return cards.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		
		guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as? CardCell else {
			return UICollectionViewCell()
		}
		
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
		
		let cardCell = cell as? CardCell
		
		let card = cards[indexPath.row]
		
		cardCell?.setupCell(card: card)
	}
}
