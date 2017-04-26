//
//  GroceryItemsViewModel.swift
//  GroceryApp
//
//  Created by showxjn on 17/4/26.
//  Copyright © 2017年 Ceshidudian. All rights reserved.
//

import Foundation


class GroceryItemsViewModel: ViewModel {
	
	// MARK: - Properties
	
	var groceryList: GroceryList?
	
	var groceryItems: [GroceryItem] {
		let result = groceryList?.items?.flatMap {
			$0 as? GroceryItem
		}
		return result ?? []
	}
	
	// MARK: - Grocery Item Data
	
	func groceryItem(at indexPath: IndexPath) -> (name: String?, quantity: Int16) {
		let item: GroceryItem? = groceryItems.value(at: indexPath.row)
		return (item?.name, item?.quantity ?? 0)
	}
}
