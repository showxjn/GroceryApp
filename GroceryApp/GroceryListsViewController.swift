//
//  GroceryListsViewController.swift
//  GroceryApp
//
//  Created by showxjn on 17/4/26.
//  Copyright © 2017年 Ceshidudian. All rights reserved.
//

import UIKit

class GroceryListsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ViewModelContainer {

	// MARK: - Properties
	
	@IBOutlet weak var groceryListTableView: UITableView?
	var viewModel: GroceryListsViewModel = GroceryListsViewModel()
	
	// MARK: - Table View
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return viewModel.groceryLists.count
	}
	
	func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
		let list = viewModel.groceryList(at: indexPath)
		
		cell.textLabel?.text = list.name
		cell.detailTextLabel?.text = "\(list.itemCount) Items"
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		return tableView.dequeueReusableCell(withIdentifier: GAConstants.TableCell.rightDetail, for: indexPath)
	}
	
	// MARK: - Segue
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		super.prepare(for: segue, sender: sender)
		
		if var groceryListContainer = segue.destination as? SelectedGroceryListContainer,
			let indexpath = groceryListTableView?.indexPathForSelectedRow {
				viewModel.transferGroceryList(at: indexpath, to: &groceryListContainer)
			}
		
	}

}
