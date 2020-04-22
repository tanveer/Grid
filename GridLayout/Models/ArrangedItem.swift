//
//  ArrangedItem.swift
//  GridLayout
//
//  Created by Denis Obukhov on 16.04.2020.
//  Copyright © 2020 Denis Obukhov. All rights reserved.
//

import Foundation

/// Specfies the abstract position of a grid item in a grid view
struct ArrangedItem {
    let gridItem: GridItem
    let startPosition: GridPosition
    let endPosition: GridPosition
    
    var area: Int { self.rowsCount * self.columnsCount }
    var columnsCount: Int { endPosition.column - startPosition.column + 1 }
    var rowsCount: Int { endPosition.row - startPosition.row + 1 }
    
    func contains(_ position: GridPosition) -> Bool {
        return position.column >= startPosition.column
            && position.column <= endPosition.column
            && position.row >= startPosition.row
            && position.row <= endPosition.row
    }
}