//
//  QuickPerformanceTests.swift
//  QuickPerformanceTests
//
//  Created by Zhen Tang on 8/29/16.
//  Copyright © 2016 Zhen Tang. All rights reserved.
//

import Quick
import XCTest

class QuickSpec285: QuickSpec {
    override func spec() {
        it("should pass the test") {
             XCTAssertEqual(1 + 1, 2, "one plus one should equal two")
        }
    }
}
