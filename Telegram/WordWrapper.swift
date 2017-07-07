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

    // Assumptions: Tabs and double spaces dont exist

    func wrapText() -> [String] {

        var wrappedText: [String] = []

        let blurb = text.joined(separator: " ")
        let words = blurb.components(separatedBy: " ")
        print(words)

        var line = ""
        var characterCount: Int {
            return line.characters.count
        }

        for word in words {

            let nextSubstring = (word == words.last) ? word : word + " "

            if characterCount + nextSubstring.characters.count < maxCharacters {
                line += nextSubstring
                continue

            } else if characterCount + nextSubstring.characters.count == maxCharacters {
                line += nextSubstring
                wrappedText.append(line)
                line = ""

            } else if characterCount + nextSubstring.characters.count > maxCharacters {
                wrappedText.append(line)
                line = nextSubstring

            }

        }

        if !line.isEmpty {
            wrappedText.append(line)
        }

        return wrappedText
        
    }
    
}
