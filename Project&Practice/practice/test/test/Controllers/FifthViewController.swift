//
//  FifthViewController.swift
//  test
//
//  Created by 강주원 on 2022/06/09.
//

import UIKit

class FifthViewController: UIViewController {
	
	let headerview = HeaderView()
	let tableview = UITableView()
	
	var headerViewTopConstraint: NSLayoutConstraint? // to make collapsible header
	
	let cellId = "cellId"
	let tiles = [
		"Star balance",
		"Bonus stars",
		"Try these",
		"Welcome back",
		"Uplifting"
	]
	
	// MARK: - ViewDidLoad
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupTableView()
		
		style()
		layout()
	} //viewdidload end
	
}

// MARK: - extension for headerview
extension FifthViewController {
	func style() {
		headerview.translatesAutoresizingMaskIntoConstraints = false
		tableview.translatesAutoresizingMaskIntoConstraints = false
		
		headerview.backgroundColor = .systemMint
	}
	
	func layout() {
		view.addSubview(headerview)
		view.addSubview(tableview)
		
		headerViewTopConstraint = headerview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
		
		NSLayoutConstraint.activate([
		
//			headerview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
			// headerViewTopConstraint에 따로 넣어주기 위해 위로 뺐음
			headerViewTopConstraint!,
			
			headerview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			headerview.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			
			tableview.topAnchor.constraint(equalTo: headerview.bottomAnchor),
			tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			tableview.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
			
		])
		
	}
}

// MARK: - TableView
extension FifthViewController: UITableViewDataSource {
	
	func setupTableView() { // table view stuff for every cell in table
		tableview.dataSource = self
		tableview.delegate = self
		
		tableview.register(UITableViewCell.self, forCellReuseIdentifier: cellId) //register a class to use in creating new table cells.
		tableview.tableFooterView = UIView() // gets rid of any extra footer or extra rows
		
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableview.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
		
		cell.textLabel?.text = tiles[indexPath.row]
		cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return tiles.count // how many rows in the section
	}
}

// MARK: - Animating scrollView
extension FifthViewController: UITableViewDelegate {
	//  going to tell the table view how tall or how high that tableView should be.
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 300
	}
	
	func scrollViewDidScroll(_ scrollView: UIScrollView) { // make collapsible header
		
		let y = scrollView.contentOffset.y // y position of scroll
		
		let swipingDown = y <= 0 // negative value when scrolling(to know scrolling direction). won't concern about this,
		let shouldSnap = y > 30 // Threshold. 30 is random value. use this to decide when the header will snap up.
		let labelHeight = headerview.greeting.frame.height + 16
		// total height of header's label.
		// label + spacer(in layer(), used 8*multiple 2)
		
		UIView.animate(withDuration: 0.3) {
			self.headerview.greeting.alpha = swipingDown ? 1.0 : 0.0
		} // change alpha -> make header label 'fade'
		// in swipingDown -> keep alpha fully (1) || else : disappear (0)
		// 좀 올드한 animate 방식
		
		UIViewPropertyAnimator.runningPropertyAnimator(
			withDuration: 0.3,
			delay: 0,
			options: [],
			animations: {
				self.headerViewTopConstraint?.constant = shouldSnap ? -labelHeight : 0
				// if dragging up exceed threshold(shouldSnap, 30) -> subtract laberHeight ==> make it snap up
				// else, leave the top label view constraints to zero or it's offset before snap it back down to zero
				self.view.layoutIfNeeded()
				// call autoLayout if needed.
			})
		// to check whether or not snapping.
	}
}

