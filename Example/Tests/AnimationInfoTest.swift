//
//  AnimationInfoTest.swift
//  DPLibrary_Tests
//
//  Created by Дмитрий Поляков on 04.05.2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import XCTest
@testable import DPLibrary

class AnimationInfoTest: XCTestCase {
    
    func test() throws {
        let input: [(curve: UIView.AnimationCurve, duration: TimeInterval)] = [
            (.easeInOut, 0.25),
            (.easeOut, 1.5),
            (.linear, 3.45)
        ]
        
        let result = input.map({
            AnimationInfo(curve: $0.curve, duration: $0.duration)
        })
        
        let resultExpected: [(curve: UIView.AnimationCurve, options: UIView.AnimationOptions, duration: TimeInterval)] = [
            (.easeInOut, .curveEaseInOut, 0.25),
            (.easeOut, .curveEaseOut, 1.5),
            (.linear, .curveLinear, 3.45)
        ]
        
        result.enumerated().forEach({
            let returnValue = $0.element
            let expectedValue = resultExpected[$0.offset]
            
            XCTAssert(returnValue.curve == expectedValue.curve)
            XCTAssert(returnValue.options == expectedValue.options)
            XCTAssert(returnValue.duration == expectedValue.duration)
        })
    }

}
