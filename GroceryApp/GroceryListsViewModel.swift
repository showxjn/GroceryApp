//
//  GroceryListsViewModel.swift
//  GroceryApp
//
//  Created by showxjn on 17/4/26.
//  Copyright © 2017年 Ceshidudian. All rights reserved.
//

import Foundation

class GroceryListsViewModel: ViewModel {
	
	// MARK: - Properties
	
	var groceryLists: [GroceryList] {
		return dataContainer?.data ?? []
	}
	
	// MARK: - Transfering Data
	func transferGroceryList(at indexPath: IndexPath, to container: inout SelectedGroceryListContainer) {
		container.selectedGroceryList = groceryLists.value(at: indexPath.row)
	}
	
	// MARK: - Grocery List Data
	
	func groceryList(at indexPath: IndexPath) -> (name: String?, itemCount: Int) {
		let list: GroceryList? = groceryLists.value(at: indexPath.row)
		return (list?.name, list?.items?.count ?? 0)
	}
}
