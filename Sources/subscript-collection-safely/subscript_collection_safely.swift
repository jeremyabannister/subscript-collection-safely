//
//  subscript_collection_safely.swift
//  
//
//  Created by Jeremy Bannister on 9/18/22.
//

///
extension Array {
    
    ///
    public subscript(
        safely index: Index
    ) -> Element? {
        
        ///
        get {
            
            ///
            guard self.indices.contains(index) else { return nil }
            
            ///
            return self[index]
        }
        
        ///
        set {
            
            ///
            if let newValue {
                
                ///
                if self.indices.contains(index) {
                    
                    ///
                    self[index] = newValue
                    
                ///
                } else if index == self.endIndex {
                    
                    ///
                    self.append(newValue)
                }
                
            ///
            } else {
                
                ///
                if self.indices.contains(index) {
                    
                    ///
                    self.remove(at: index)
                }
            }
        }
    }
}

///
extension RangeReplaceableCollection {
    
    ///
    public subscript(
        safely index: Index
    ) -> Element? {
        
        ///
        guard self.indices.contains(index) else { return nil }
        
        ///
        return self[index]
    }
}
