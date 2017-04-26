//
//  Placeholder.swift
//  GroceryApp
//
//  Created by showxjn on 17/4/25.
//  Copyright © 2017年 Ceshidudian. All rights reserved.
//

import Foundation

typealias GroceryList = (name: String?, items: NSSet?)
typealias GroceryItem = (name: String?, quantity: Int16)

class DataContainer {
	var data: [GroceryList] = [
		GroceryList(name: "List 1", items: NSSet(array: [
			GroceryItem(name: "Milk", quantity: 2),
			GroceryItem(name: "Eggs", quantity: 12),
			GroceryItem(name: "Cereal", quantity: 1)
			])),
		GroceryList(name: "List 2", items: NSSet(array: [
			GroceryItem(name: "Cookies", quantity: 20),
			GroceryItem(name: "Bread", quantity: 12),
			GroceryItem(name: "Cereal", quantity: 1)
			]))
	]
}


protocol PlaceholderDataContainer {
	var container: DataContainer { get set}
}
