//
//  ViewController.swift
//  2_CloneScreen
//
//  Created by 강주원 on 2022/06/06.
//

import UIKit

class FirstViewController: UIViewController {

	@IBOutlet weak var collectionView: UICollectionView!
	
	@IBOutlet weak var button: UIButton!
	@IBOutlet var panGestureRecognizer: UIPanGestureRecognizer!
	
	private let sections = CollectionViewData.shared.pageData //C.V.Data로부터 pagadata 가져옴
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		panGestureRecognizer.delegate = self
		
		collectionView.delegate = self
		collectionView.dataSource = self
		
		collectionView.addGestureRecognizer(panGestureRecognizer)
		
		collectionView.collectionViewLayout = createLayout()
	}
	//MARK: func - panGesture for button change when scroll
	@IBAction func panAction(_ sender: UIPanGestureRecognizer) {
		let velocity = sender.velocity(in: collectionView)
		
		if velocity.y > 0 {
			button.setImage(UIImage(named: "btn2_resize.png"), for: .normal)
		} else {
			button.setImage(UIImage(named: "btn1_resize.png"), for: .normal)
		}
	}
	
	// MARK: - Create Layout (CollectionView CompositionalLayout)
	
	private func createLayout() -> UICollectionViewCompositionalLayout {
		UICollectionViewCompositionalLayout { [weak self] sectionIndex, layoutEnvironment in
			guard let self = self else { return nil }
			let section = self.sections[sectionIndex]
			switch section {
				// 1. item, 2. group, 3. section 이렇게 세 가지가 필요함.
			case .firstCell(_):
				// CompositionalLayout : struct in CollectionViewRelated group
				
				//-------한셀안에서처리실패-----------
				let item1 = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(0.3), spacing: 5)
				let item2 = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(0.5), spacing: 5)
				let item3 = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(0.2), spacing: 5)
				
				let group = CompositionalLayout.createMultiLayoutGroup(alignment: .vertical, width: .fractionalWidth(1), height: .absolute(900), items: [item1, item2, item3])

				let section = NSCollectionLayoutSection(group: group) // section
				return section
				
			case .secondCell(_):
//				let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1),
//																	heightDimension: .fractionalHeight(1)))
//				let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(0.6),
//																				 heightDimension: .fractionalHeight(0.4)), subitems: [item])
				
				let item = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(1), spacing: 5)
				let group = CompositionalLayout.createSingleLayoutGroup(alignment: .horizontal, width: .fractionalWidth(0.7), height: .fractionalHeight(0.4), item: item, count: 1)
				let section = NSCollectionLayoutSection(group: group)
				section.orthogonalScrollingBehavior = .continuous// 가로로 스크롤되게 만듬
//				section.boundarySupplementaryItems = [self.suppl]
				//header
				section.boundarySupplementaryItems = [self.supplementaryHeaderItem()]  
				
				
//				section.interGroupSpacing = 10
//				section.contentInsets = .init(top: 0, leading: 10, bottom: 30, trailing: 10)
				
				return section

			case .thirdCell(_):
				let item = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(0.3), spacing: 5)
				let group = CompositionalLayout.createSingleLayoutGroup(alignment: .vertical, width: .fractionalWidth(1), height: .absolute(500), item: item, count: 2)
				let section = NSCollectionLayoutSection(group: group)
				return section
				
			case .fourthCell(_):
				let item = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(1), spacing: 5)
				let group = CompositionalLayout.createSingleLayoutGroup(alignment: .horizontal, width: .fractionalWidth(0.4), height: .fractionalHeight(0.3), item: item, count: 1)
				let section = NSCollectionLayoutSection(group: group)
				section.orthogonalScrollingBehavior = .continuous
				section.boundarySupplementaryItems = [self.supplementaryHeaderItem()]
				return section
				
			case .fifthCell(_):
				let item1 = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(1/4), spacing: 5)
				let item2 = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(1/8), spacing: 5)
				let item3 = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(1/8), spacing: 5)
				let item4 = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(1/4), spacing: 5)
				let item5 = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(1/4), spacing: 5)
				let group = CompositionalLayout.createMultiLayoutGroup(alignment: .vertical, width: .fractionalWidth(1), height: .absolute(2000), items: [item1, item2, item3, item4, item5])
				
				let section = NSCollectionLayoutSection(group: group)
				section.interGroupSpacing = 1
				return section
			}
		}
		
	}
	
	private func supplementaryHeaderItem() -> NSCollectionLayoutBoundarySupplementaryItem {
		.init(
			layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)),
			elementKind: UICollectionView.elementKindSectionHeader,
			alignment: .top)
	}
	
	
}

// MARK: - Extension - CollectionView
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
	
	func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
		switch kind {
		case UICollectionView.elementKindSectionHeader:
			let header = collectionView.dequeueReusableSupplementaryView(
				ofKind: kind,
				withReuseIdentifier: "CollectionViewHeaderReusableView",
				for: indexPath) as! CollectionViewHeaderReusableView
			header.setup(title: sections[indexPath.section].title)
			return header
		default:
			return UICollectionReusableView()
		}
	}
}

//MARK: Extexsion - GestureRecognizer for Button
extension FirstViewController: UIGestureRecognizerDelegate {
	func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
		return true
	}
}

