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
    var wordsArray: [String] = []
    var wordsDirections: [Int] = []
    
    init(WordsArray: [String])
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
        var width = 9
        var height = 16
        
        if wordsArray.count > 6
        {
            width = 14
            height = 21
        }
        
        // This for loop gets what size the wordsearch needs to be.
        for var i = 0; i < wordsArray.count; i++
        {
            if wordsDirections[i] == 1 || wordsDirections[i] == 10
            {
                if wordsArray[i].characters.count > width
                {
                    width = wordsArray[i].characters.count + 2
                }
                
            }
            else if wordsDirections[i] == 2 || wordsDirections[i] == 3 || wordsDirections[i] == 20 || wordsDirections[i] == 30
            {
                if wordsArray[i].characters.count > width
                {
                    width = wordsArray[i].characters.count + 2
                }
                if wordsArray[i].characters.count > height
                {
                    height = wordsArray[i].characters.count + 2
                }
            }
            else if wordsDirections[i] == 4 || wordsDirections[i] == 5 || wordsDirections[i] == 40 || wordsDirections[i] == 50
            {
                if wordsArray[i].characters.count > height
                {
                    height = wordsArray[i].characters.count + 2
                }
            }
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
}
