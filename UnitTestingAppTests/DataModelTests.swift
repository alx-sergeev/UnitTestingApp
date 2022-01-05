//
//  DataModelTests.swift
//  DataModelTests
//
//  Created by Сергеев Александр on 05.01.2022.
//

import XCTest
@testable import UnitTestingApp

class DataModelTests: XCTestCase {
    var sut: DataModel!

    override func setUp() {
        super.setUp()
        sut = DataModel()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testPerformanceExample() {
        measure {
            sut.setVolume(to: 28)
        }
    }
    
    func testLowValueShouldBeZero() {
        sut.setVolume(to: 0)
        
        let volume = sut.volume
        
        XCTAssert(volume == 0, "Значение свойства volume не равно 0")
    }
    
    func testHighValueShouldBeOneHundred() {
        sut.setVolume(to: 100)
        
        let volume = sut.volume
        
        XCTAssert(volume == 100)
    }
}
