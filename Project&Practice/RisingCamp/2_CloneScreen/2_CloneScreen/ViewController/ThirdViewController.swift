//
//  ThirdViewController.swift
//  2_CloneScreen
//
//  Created by 강주원 on 2022/06/10.
//

import UIKit

class ThirdViewController: UIViewController {
	
	@IBOutlet weak var segmentControl: UISegmentedControl!
	@IBOutlet weak var collectionView: UICollectionView!
	
	private let sections = VC3CollectionViewData.shared.pagaData
	//	let tableView = UITableView
	override func viewDidLoad() {
		super.viewDidLoad()
		
		collectionView.delegate = self
		collectionView.dataSource = self
		
		collectionView.collectionViewLayout = createLayout()
	}
	
	@IBAction func segmentCtrTapped(_ sender: Any) {
	}
}


// MARK: Extension - CollectionView

extension ThirdViewController: UICollectionViewDataSource {
	func numberOfSections(in collectionView: UICollectionView) -> Int {
		return sections.count
	}
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return sections[section].count
	}
}

extension ThirdViewController: UICollectionViewDelegate {
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		
		switch sections[indexPath.section] {
		
		case .menuCell(let items) :
			let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as! MenuCollectionViewCell
			cell.setup(items[indexPath.row])
			return cell
			
		case .bottomCell(let items) :
			let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bottomCell", for: indexPath) as! BottomCollectionViewCell
			cell.setup(items[indexPath.row])
			return cell
		}
	}
	
}

extension ThirdViewController {
	
	private func createLayout() -> UICollectionViewCompositionalLayout {
		UICollectionViewCompositionalLayout { [weak self] sectionIndex, layoutEnvironment in
			guard let self = self else { return nil }
			
			let section = self.sections[sectionIndex]
			
			switch section {
				
			case .menuCell(_):
				let item = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(1), spacing: 5)
				let group = CompositionalLayout.createSingleLayoutGroup(alignment: .vertical, width: .fractionalWidth(1), height: .absolute(800), item: item, count: 10)
				let section = NSCollectionLayoutSection(group: group)
				return section
				
			case .bottomCell(_):
				let item = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(1), spacing: 5)
				let group = CompositionalLayout.createSingleLayoutGroup(alignment: .horizontal, width: .fractionalWidth(1), height: .fractionalHeight(1), item: item, count: 1)
				let section = NSCollectionLayoutSection(group: group)
				return section
				
			}
		}
	}
}
