//
//  TelegramTests.swift
//  TelegramTests
//
//  Created by Michelline Tran on 6/29/17.
//  Copyright © 2017 MichellineTran. All rights reserved.
//

import XCTest
@testable import Telegram

class TelegramTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNoChanges() {
        var wrapper = Wrapper(maxCharacters: 13, text: ["This is a cat"])
        let textWrapped = wrapper.wrapText()
        XCTAssertEqual(textWrapped , ["This is a cat"])
    }

    func testOneLine() {
        var wrapper = Wrapper(maxCharacters: 11, text: ["This is a cat"])
        let textWrapped = wrapper.wrapText()
        XCTAssertEqual(textWrapped , ["This is a ", "cat"])
    }

    func testTwoLines() {
        var wrapper = Wrapper(maxCharacters: 11, text: ["This is a cat.", "Meow."])
        let textWrapped = wrapper.wrapText()
        XCTAssertEqual(textWrapped , ["This is a ", "cat. Meow."])
    }

}
