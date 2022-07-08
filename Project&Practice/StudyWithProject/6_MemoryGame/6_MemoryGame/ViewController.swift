//
//  ViewController.swift
//  6_MemoryGame
//
//  Created by 강주원 on 2022/07/05.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var collectionView: UICollectionView!
	@IBOutlet weak var timerLabel: UILabel!
	
	let model = CardModel()
	var cards: [Card] = []
	
	var timer: Timer?
	var timeLimit: Int = 20

	var firstCardIndex: IndexPath?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		cards = model.getCards()
		
		collectionView.delegate = self
		collectionView.dataSource = self
		
		//
		timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerStart), userInfo: nil, repeats: true)
		//
		RunLoop.main.add(timer!, forMode: .common)
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


}

// MARK: - collectionView Delegate

extension ViewController: UICollectionViewDelegate {
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		
		if timeLimit <= 0 {
			return
		}
		
		guard let cell = collectionView.cellForItem(at: indexPath) as? CardCell else {
			return
		}
		
		if cell.card?.isFlipped == false && cell.card?.isMatched == false {
			cell.flipToFront()
			
			if firstCardIndex == nil {
				firstCardIndex = indexPath
			} else {
				checkForMatch(secondCardIndex: indexPath)
			}
		}
		
	}
	
	// MARK: - check match / game end
	func checkForMatch(secondCardIndex: IndexPath) {
		
		let firstCard = cards[firstCardIndex!.row]
		let secondCard = cards[secondCardIndex.row]
		
		let firstCardCell = collectionView.cellForItem(at: firstCardIndex!) as? CardCell
		let secondCardCell = collectionView.cellForItem(at: secondCardIndex) as? CardCell
		
		//compare cards
		if firstCard.imageName == secondCard.imageName {
			
			firstCard.isMatched = true
			secondCard.isMatched = true
			
			firstCardCell?.removeCard()
			secondCardCell?.removeCard()
			
			checkForGameEnd()
		} else {
			firstCard.isFlipped = false
			secondCard.isFlipped = false
			
			firstCardCell?.flipToBack()
			secondCardCell?.flipToBack()
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
			showAlert(title: "Wow", message: "You Win")
		} else {
			if timeLimit <= 0 {
				showAlert(title: "Game Over", message: "You can do better")
			}
		}
	}
	
	func showAlert(title: String, message: String) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		let okAction = UIAlertAction(title: "OK", style: .default)
		alert.addAction(okAction)
		present(alert, animated: true, completion: nil)
	}
	
}


// MARK: - collectionView Datasource
extension ViewController: UICollectionViewDataSource {
	
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
