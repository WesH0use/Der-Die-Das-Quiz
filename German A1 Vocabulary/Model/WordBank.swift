//
//  WordBank.swift
//  German A1 Vocabulary
//
//  Created by Wesley House on 7/4/19.
//  Copyright © 2019 Wesley House. All rights reserved.
//

import Foundation

class wordBank{

var list = [Question]()

init(){
    
    let item = Question(text: "Mann", correctAnsewr: "Der", translation: "Man")
    list.append(item)
    
    
    list.append(Question(text: "Enkel", correctAnsewr: "Der", translation: "Grandson"))
    list.append(Question(text: "Bruder", correctAnsewr: "Der", translation: "Brother"))
    list.append(Question(text: "Vater", correctAnsewr: "Der", translation: "Father"))
    list.append(Question(text: "Großvater", correctAnsewr: "Der", translation: "Grandfather"))
    list.append(Question(text: "Opa", correctAnsewr: "Der", translation: "Grandpa"))
    list.append(Question(text: "Schwester", correctAnsewr: "Die", translation: "Sister"))
    list.append(Question(text: "Großmutter", correctAnsewr: "Die", translation: "Grandmother"))
    list.append(Question(text: "Tante", correctAnsewr: "Die", translation: "Aunt"))
    list.append(Question(text: "Großeltern", correctAnsewr: "Die", translation: "Grandparents"))
    list.append(Question(text: "Enkelin", correctAnsewr: "Die", translation: "Granddaughter"))
    list.append(Question(text: "Butter", correctAnsewr: "Die", translation: "Butte"))
    list.append(Question(text: "Blume", correctAnsewr: "Die", translation: "Flower"))
    list.append(Question(text: "Kette", correctAnsewr: "Die", translation: "Necklace"))
    list.append(Question(text: "Geschwister", correctAnsewr: "Das", translation: "Sibling"))
    list.append(Question(text: "Prozent", correctAnsewr: "Das", translation: "Per cent"))
    list.append(Question(text: "Team", correctAnsewr: "Das", translation: "Team"))
    list.append(Question(text: "Enkelkind", correctAnsewr: "Das", translation: "Grandchild"))
    list.append(Question(text: "Ende", correctAnsewr: "Das", translation: "End"))
    list.append(Question(text: "Dort", correctAnsewr: "Das", translation: "Village"))
    list.append(Question(text: "Beitrag", correctAnsewr: "Der", translation: "Article"))
    list.append(Question(text: "Modell", correctAnsewr: "Das", translation: "Model"))
    list.append(Question(text: "Sohn", correctAnsewr: "Der", translation: "Son"))
    list.append(Question(text: "Geschlecht", correctAnsewr: "Das", translation: "Gender"))
    }

}
