//
//  WordWrapper.swift
//  Telegram
//
//  Created by Michelline Tran on 6/29/17.
//  Copyright © 2017 MichellineTran. All rights reserved.
//

//Write a program that takes a number w, then accepts lines of text and outputs lines of text, where the output lines have 
//as many words as possible but are never longer than w characters. Words may not be split, but you may assume that no 
//single word is too long for a line.

import Foundation

struct Wrapper {
    var maxCharacters = 0
    var text = [String]()

    func wrapText() -> [String] {

        var wrappedText = [String]()

        for line in text {
            if line.characters.count <= maxCharacters {
                wrappedText.append(line)
                continue
            } else {

                let lineReversed = line.characters.reversed()

                if let modifiedRange = String(lineReversed).range(of: " ") {
                    let modifiedReversedLine = String(lineReversed).substring(from: modifiedRange.lowerBound)
                    wrappedText.append(String(modifiedReversedLine.characters.reversed()))

                    let reversedLastWord = String(lineReversed).substring(to: modifiedRange.lowerBound)
                    let lastWord = String(reversedLastWord.characters.reversed())
                    wrappedText.append(lastWord)

                }
            }

        }

        return wrappedText

    }

}

