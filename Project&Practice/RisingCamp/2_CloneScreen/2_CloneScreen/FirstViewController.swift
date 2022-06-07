//
//  ViewController.swift
//  2_CloneScreen
//
//  Created by 강주원 on 2022/06/06.
//

import UIKit

class FirstViewController: UIViewController {

	@IBOutlet weak var collectionView: UICollectionView!
	
	private let sections = CollectionViewData.shared.pageData //C.V.Data로부터 pagadata 가져옴
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		collectionView.delegate = self
		collectionView.dataSource = self
		
		collectionView.collectionViewLayout = createLayout()
	}
	
	private func createLayout() -> UICollectionViewCompositionalLayout {
		UICollectionViewCompositionalLayout { [weak self] sectionIndex, layoutEnvironment in
			guard let self = self else { return nil }
			let section = self.sections[sectionIndex]
			switch section {
				// 1. item, 2. group, 3. section 이렇게 세 가지가 필요함.
			case .firstCell(_):
				let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))) // item
				let group = NSCollectionLayoutGroup.vertical(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)), subitems: [item]) // group, 크기?
				
				let section = NSCollectionLayoutSection(group: group) // section
				return section
				
			case .secondCell(_):
				let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
				let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .absolute(300), heightDimension: .absolute(280)), subitems: [item])
				let section = NSCollectionLayoutSection(group: group)
				
				section.orthogonalScrollingBehavior = .continuous// 가로로 스크롤되게 만듬
				
				section.interGroupSpacing = 10
				section.contentInsets = .init(top: 0, leading: 10, bottom: 30, trailing: 10)
				return section
//				return nil// 나중에 ㄲㄲ
			case .thirdCell(_):
				return nil
			case .fourthCell(_):
				return nil
			case .fifthCell(_):
				return nil
			}
		}
		
	}
	
	
	
	
}

extension FirstViewController: UICollectionViewDelegate, UICollectionViewDataSource {
	func numberOfSections(in collectionView: UICollectionView) -> Int {
		return sections.count
	} // number of section
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return sections[section].count
	} // number of items in sections.
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		switch sections[indexPath.section] {
		case .firstCell(let items) :
			let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FirstCollectionViewCell", for: indexPath) as! FirstCollectionViewCell
			cell.setup(items[indexPath.row])
			return cell
		case .secondCell(let items) :
			let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondCollectionViewCell", for: indexPath) as! SecondCollectionViewCell
			cell.setup(items[indexPath.row])
			return cell
		case .thirdCell(let items) :
			let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ThirdCollectionViewCell", for: indexPath) as! ThirdCollectionViewCell
			cell.setup(items[indexPath.row])
			return cell
		case .fourthCell(let items) :
			let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FourthCollectionViewCell", for: indexPath) as! FourthCollectionViewCell
			cell.setup(items[indexPath.row])
			return cell
		case .fifthCell(let items) :
			let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FifthCollectionViewCell", for: indexPath) as! FifthCollectionViewCell
			cell.setup(items[indexPath.row])
			return cell
		}
	}
	
}

//extension FirstViewController: UICollectionViewDelegateFlowLayout {
//	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//	}
//}
//
