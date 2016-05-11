//
//  WordSearchClass.swift
//  Word Search 2
//
//  Created by mphipps on 4/22/16.
//  Copyright © 2016 kpritchett. All rights reserved.
//

import UIKit

class WordSearchClass: NSObject
{
    var lettersArray: [[String]] = []
    var wordsArray: [Word] = []
    var wordsDirections: [Int] = []
    
    init(WordsArray: [Word])
    {
        super.init()
        wordsArray = WordsArray
        for var i = 0 ; i < wordsArray.count ; i++
        {
            wordsDirections[i] = Int(arc4random_uniform(5) + 1)
            let temp = Int(arc4random_uniform(2))
            if temp != 0
            {
                wordsDirections[i] = wordsDirections[i] * 10
            }
        }
    }
    
    func generateWordSearch()
    {
        // one digit = forward, two = backwards (eg. 1, 10)
        // 1/10 = normal, 2/20 = left to right diagonal, 3/30 = right to left diagonal
        // 4/40 = down, 5/50 = up
        let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        
        // Determines size of word search based on How many words are imputed
        sortWordsArray()
        var width = 9
        var height = 16
        
        if wordsArray.count > 6
        {
            width = 14
            height = 21
        }
        for var r = 0; r < width; r++
        {
            var words: [String] = []
            for var c = 0; c < height; c++
            {
                let letterPosition = Int(arc4random_uniform(26))
                let myRange = Range<String.Index>(start: alphabet.startIndex.advancedBy(letterPosition), end: alphabet.startIndex.advancedBy(letterPosition + 1))
                words.append(alphabet.substringWithRange(myRange))
            }
            lettersArray.append(words)
        }
    }
    func insertWordHorizontal(Word: String, Row: Int, var Col: Int, Dir: Int)
    {
        if(Dir == 1)
        {
            for var i = 0; i < Word.characters.count; i++
            {
                let myRange = Range<String.Index>(start: Word.startIndex.advancedBy(i), end: Word.startIndex.advancedBy(i + 1))
                lettersArray[Row][Col] = Word.substringWithRange(myRange)
                Col++
            }
        }
        else
        {
            for var i = 0; i < Word.characters.count; i++
            {
                let myRange = Range<String.Index>(start: Word.startIndex.advancedBy(i), end: Word.startIndex.advancedBy(i + 1))
                lettersArray[Row][Col] = Word.substringWithRange(myRange)
                Col--
            }
        }
    }
    func insertVerticalWord(Word: String, Row: Int, Col: Int)
    {
    }
    func sortWordsArray()
    {
        for var i = 0; i < wordsArray.count - 1; i++
        {
            if(wordsArray[i].getWord().characters.count < wordsArray[i + 1].getWord().characters.count)
            {
                let temp = wordsArray[i]
                wordsArray[i] = wordsArray[i + 1]
                wordsArray[i + 1] = temp
                i = -1
            }
        }
    }
}
