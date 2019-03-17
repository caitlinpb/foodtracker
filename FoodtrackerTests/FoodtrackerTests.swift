//
//  FoodtrackerTests.swift
//  FoodtrackerTests
//
//  Created by Caitlin Palmer-Bright on 17/3/19.
//  Copyright © 2019 Bitsmith. All rights reserved.
//

import XCTest
@testable import Foodtracker

class FoodtrackerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    //MARK: Meal Class Tests
    
    // Confirm that the meal initializer returns a Meal object when passed valid parameters.
    
    func testMealInitializationSucceeds() {
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
        
        // Highest positive rating
        let negativeRatingMeal = Meal.init(name: "Zero", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty name string
        let emptyNameMeal = Meal.init(name: "", photo: nil, rating: 5)
        XCTAssertNil(emptyNameMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
}
