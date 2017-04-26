//
//  ViewModel.swift
//  GroceryApp
//
//  Created by showxjn on 17/4/26.
//  Copyright © 2017年 Ceshidudian. All rights reserved.
//

import Foundation
import UIKit

class ViewModel {
	
	//MARK: -- Properties
	
	var placeholderContainer: PlaceholderDataContainer?
	var dataContainer: DataContainer? {
		return placeholderContainer?.container
	}
	
	//MARK: -- Initializer
	init(placeholderContainer: PlaceholderDataContainer? = UIApplication.shared.delegate as? AppDelegate) {
		self.placeholderContainer = placeholderContainer
	}
}
