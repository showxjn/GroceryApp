//
//  Array+Extensions.swift
//  GroceryApp
//
//  Created by showxjn on 17/4/26.
//  Copyright © 2017年 Ceshidudian. All rights reserved.
//

import Foundation

extension Array {
	func value(at index: Int) -> Element? {
		guard index >= 0 && index < endIndex else {return nil}
		return self[index]
	}
}
