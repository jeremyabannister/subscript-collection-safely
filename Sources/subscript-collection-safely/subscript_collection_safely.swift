//
//  subscript_collection_safely.swift
//  
//
//  Created by Jeremy Bannister on 9/18/22.
//

///
public extension RangeReplaceableCollection {
    
    ///
    subscript (safely index: Index) -> Element? {
        guard self.indices.contains(index) else { return nil }
        return self[index]
    }
}
