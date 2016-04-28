//
//  WordSearch.swift
//  Word Search 2
//
//  Created by mphipps on 4/20/16.
//  Copyright © 2016 kpritchett. All rights reserved.
//

import UIKit

class WordSearch: UIView
{
    
    var lettersArray: [[String]] = []
    var wordsArray: [String] = []
    
    init(WordsArray: [String])
    {
        super.init()
        wordsArray = WordsArray
    }
}
