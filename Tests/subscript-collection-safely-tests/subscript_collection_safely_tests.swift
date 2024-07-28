//
//  subscript_collection_safely_tests.swift
//  
//
//  Created by Jeremy Bannister on 9/18/22.
//

///
import subscript_collection_safely
import XCTest

///
final class subscript_safely_tests: XCTestCase {
    
    ///
    func test_subscript_safely() {
        
        ///
        let a = [1, 2, 3]
        
        ///
        XCTAssertEqual(
            [
                a[safely: 0],
                a[safely: 1],
                a[safely: 2],
                a[safely: 3],
                a[safely: 4],
                a[safely: 1000]
            ],
            [1, 2, 3, nil, nil, nil]
        )
    }
    
    ///
    func test_keyPath () {
        
        ///
        func test (_ keyPath: KeyPath<Array<Int>, Int?>) -> Int? {
            [1, 2, 3][keyPath: keyPath]
        }
        
        ///
        XCTAssertEqual(
            [
                test(\.[safely: -1]),
                test(\.[safely: 0]),
                test(\.[safely: 1]),
                test(\.[safely: 2]),
                test(\.[safely: 3]),
                test(\.[safely: 4]),
                test(\.[safely: 1000]),
            ],
            [nil, 1, 2, 3, nil, nil, nil]
        )
    }
}
