//
//  Item_list+ViewModel.swift
//  FavoriteThings
//
//  Created by Ryan Lewin on 25/4/20.
//  Copyright © 2020 Ryan Lewin. All rights reserved.
//

import Foundation
import CoreData

extension Item_list {
    
    var entries: [Item] {
        (self.stores?.array as? [Item]) ?? []
    }
    
    func move(moving: Item, to: Int) {
        var index = entries.firstIndex(of: moving)!
        var dest = to
        if to > index {dest -= 1}
        self.removeFromStores(at: index)
        self.insertIntoStores(moving, at: dest)
    }
}
