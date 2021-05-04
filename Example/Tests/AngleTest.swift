//
//  AngleTest.swift
//  DPLibrary_Tests
//
//  Created by Дмитрий Поляков on 04.05.2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import XCTest
@testable import DPLibrary

class AngleTest: XCTestCase {
    
    func testDegrees() throws {
        let input: [CGFloat] = [
            60,
            90,
            159
        ]
        
        let result = input.map({
            Angle(degrees: $0)
        })
        
        let resultExpected: [Angle] = [
            .init(radians: 1.0472),
            .init(radians: 1.5708),
            .init(radians: 2.77507)
        ]
        
        result.enumerated().forEach({
            let returnValue = $0.element
            let expectedValue = resultExpected[$0.offset]
            
            XCTAssertEqual(returnValue.degrees, expectedValue.degrees, accuracy: 0.001)
            XCTAssertEqual(returnValue.radians, expectedValue.radians, accuracy: 0.001)
        })
    }
    
    func testRadians() throws {
        let input: [CGFloat] = [
            1,
            5,
            10.6
        ]
        
        let result = input.map({
            Angle(radians: $0)
        })
        
        let resultExpected: [Angle] = [
            .init(degrees: 57.2958),
            .init(degrees: 286.479),
            .init(degrees: 607.3353)
        ]
        
        result.enumerated().forEach({
            let returnValue = $0.element
            let expectedValue = resultExpected[$0.offset]
            
            XCTAssertEqual(returnValue.degrees, expectedValue.degrees, accuracy: 0.001)
            XCTAssertEqual(returnValue.radians, expectedValue.radians, accuracy: 0.001)
        })
    }

}
