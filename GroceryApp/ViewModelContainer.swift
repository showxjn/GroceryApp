//
//  ViewModelContainer.swift
//  GroceryApp
//
//  Created by showxjn on 17/4/26.
//  Copyright © 2017年 Ceshidudian. All rights reserved.
//

import Foundation

protocol ViewModelContainer {
	associatedtype VM: ViewModel
	
	var viewModel: VM { get set }
}
