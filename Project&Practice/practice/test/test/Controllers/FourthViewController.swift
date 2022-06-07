//
//  FourthViewController.swift
//  test
//
//  Created by 강주원 on 2022/06/07.
//

import UIKit

class FourthViewController: UIViewController {
	
	@IBOutlet weak var collectionView: UICollectionView!
	

	override func viewDidLoad() {
		super.viewDidLoad()
		
		collectionView.dataSource = self
		
		collectionView.delegate = self
		collectionView.collectionViewLayout = UICollectionViewFlowLayout()
		
	}
}

extension FourthViewController: UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return fruits.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FruitCell", for: indexPath) as! FruitCollectionViewCell
		
		cell.setup(with: fruits[indexPath.row])
		return cell
	}
	
}

extension FourthViewController: UICollectionViewDelegateFlowLayout {
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: 200, height: 300)
	}
}
