//
//  GroceryItemsViewController.swift
//  GroceryApp
//
//  Created by showxjn on 17/4/26.
//  Copyright © 2017年 Ceshidudian. All rights reserved.
//

import UIKit

class GroceryItemsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ViewModelContainer, SelectedGroceryListContainer {
	
	// MARK: - Properties
	
	var selectedGroceryList: GroceryList? {
		get {
			return viewModel.groceryList
		}
		
		set {
			viewModel.groceryList = newValue
		}
	}
	
	var viewModel: GroceryItemsViewModel = GroceryItemsViewModel()
	
	@IBOutlet weak var groceryItemsTableView: UITableView?
	
	// MARK: - Table Views
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return viewModel.groceryItems.count
	}
	
	func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
		let item = viewModel.groceryItem(at: indexPath)
		
		cell.textLabel?.text = item.name
		cell.detailTextLabel?.text = "Quantity: \(item.quantity)"
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		return tableView.dequeueReusableCell(withIdentifier: GAConstants.TableCell.rightDetail, for: indexPath)
	}
}
