//
//  Word.swift
//  Word Search 2
//
//  Created by mphipps on 5/10/16.
//  Copyright © 2016 kpritchett. All rights reserved.
//

import UIKit

class Word: NSObject
{
    var word = ""
    var direction = 0
    var row = -1
    var col = -1
    // negative means backwards
    // 1 = -  2 = /  3 = |  4 = \
    init(Word:String, Direction: Int, Row: Int, Col: Int)
    {
        super.init()
        word = Word
        direction = Direction
        row = Row
        col = Col
    }
    
    func getWord() -> String
    {
        return word
    }
    
    func getDirection() -> Int
    {
        return direction
    }
    
    func getStartRow() -> Int
    {
        return row
    }
    
    func getStartCol() -> Int
    {
        return col
    }
    func returnLetterAtIndex(index: Int) -> String
    {
        let myRange = Range<String.Index>(start: word.startIndex.advancedBy(index), end: word.startIndex.advancedBy(index + 1))
        return word.substringWithRange(myRange)
    }
}
