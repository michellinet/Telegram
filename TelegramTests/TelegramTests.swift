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
        let wrapper = Wrapper(maxCharacters: 13, text: ["This is a cat"])
        let textWrapped = wrapper.wrapText()
        XCTAssertEqual(textWrapped , ["This is a cat"])
    }

    func testOneLine() {
        let wrapper = Wrapper(maxCharacters: 11, text: ["This is a cat"])
        let textWrapped = wrapper.wrapText()
        XCTAssertEqual(textWrapped , ["This is a ", "cat"])
    }

    func testTwoLines() {
        let wrapper = Wrapper(maxCharacters: 11, text: ["This is a cat.", "Meow."])
        let textWrapped = wrapper.wrapText()
        XCTAssertEqual(textWrapped , ["This is a ", "cat. Meow."])
    }

    func testThreeLines() {
        let wrapper = Wrapper(maxCharacters: 11, text: ["This is a cat.", "Meow.", "Yes!"])
        let textWrapped = wrapper.wrapText()
        XCTAssertEqual(textWrapped , ["This is a ", "cat. Meow. ", "Yes!"])

    }

    func testMoveUpLines() {
        let wrapper = Wrapper(maxCharacters: 20, text: ["This is a cat", "too fast", "YES!"])
        let textWrapped = wrapper.wrapText()
        XCTAssertEqual(textWrapped , ["This is a cat too ", "fast YES!"])
    }

}
