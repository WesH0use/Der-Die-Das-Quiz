//
//  Question.swift
//  German A1 Vocabulary
//
//  Created by Wesley House on 7/4/19.
//  Copyright © 2019 Wesley House. All rights reserved.
//

import Foundation

class Question {
    
    let germanWord : String
    let definiteArticle : String
    let englishTranslation : String
    
    init(text: String, correctAnsewr: String, translation: String ){
        germanWord = text
        definiteArticle = correctAnsewr
        englishTranslation = translation
    }
    
}

