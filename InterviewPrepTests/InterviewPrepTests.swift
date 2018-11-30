//
//  InterviewPrepTests.swift
//  InterviewPrepTests
//
//  Created by Gal Blank on 11/28/18.
//  Copyright © 2018 galblank. All rights reserved.
//

import XCTest
@testable import InterviewPrep

class InterviewPrepTests: XCTestCase {

    let mainVC = ViewController()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let n = 9
        let ar = [10,20,20,10,10,30,50,10,20]
        //challenge location - Challenges/sock-merchant.pdf
        XCTAssert(mainVC.pairFinder(number: n, array: ar) == 3)

        /// valley finder
        //challenge location - Challenges/counting-valleys.pdf
        XCTAssert(mainVC.countingValleys(n: 8, s: "UDDDUDUU") == 1)

        //challenge location - Challenges/jumping-on-the-clouds.pdf
        XCTAssert(mainVC.jumpingOnClouds(cloudsArray: [0,0,0,1,0,0]) == 3)
        XCTAssert(mainVC.jumpingOnClouds(cloudsArray: [0,0,1,0,0,1,0]) == 4)

        //challenge location - Challenges/repeated-string.pdf

    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
