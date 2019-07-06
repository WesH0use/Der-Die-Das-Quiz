//
//  ViewController.swift
//  German A1 Vocabulary
//
//  Created by Wesley House on 6/28/19.
//  Copyright © 2019 Wesley House. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    var allWords = wordBank()
    var pickedAnswer : String = ""
    var questionNumber : Int = 0
    var score : Int = 0
    
    let derColor = UIColor.blue
    let dieColor = UIColor.red
    let dasColor = UIColor.green

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var buttonDas: UIButton!
    @IBOutlet weak var buttonDie: UIButton!
    @IBOutlet weak var buttonDer: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextWord()
        buttonDer.layer.cornerRadius = 30
        buttonDie.layer.cornerRadius = 30
        buttonDas.layer.cornerRadius = 30
    }


    @IBAction func answerPressed(_ sender: UIButton) {
        let correctAnswer = allWords.list[questionNumber].definiteArticle
        if sender.tag == 1 {
            pickedAnswer = "Der"
            if pickedAnswer == correctAnswer {
                buttonDer.flash()
            } else {
                answerWrong()
                buttonDer.shake()
            }
        } else if sender.tag == 2 {
            pickedAnswer = "Die"
            if pickedAnswer == correctAnswer {
                answerCorrect()
                buttonDie.flash()
            } else {
                answerWrong()
                buttonDie.shake()
            }
        } else if sender.tag == 3 {
            pickedAnswer = "Das"
            if pickedAnswer == correctAnswer {
                answerCorrect()
                buttonDas.flash()
            } else {
                answerWrong()
                buttonDas.shake()
            }
        }
        questionNumber += 1
        nextWord()
        print(pickedAnswer)
    }
    
    func answerCorrect() {
        print("correct")
        print(questionNumber)
        //What happens when answer is correct
        // How do I make the correct button selected flash?
    }
    
    func answerWrong() {
        print("incorrect")
        print(questionNumber)
        //What happens when answer is wrong
        // How do I make the wrong button selected shake?
    }
    
    
    func nextWord() {
        
        if questionNumber % 2 == 0 {
            questionLabel.transitionReveal(0.4)
            questionLabel.text = allWords.list[questionNumber].germanWord
            
        } else {
            questionLabel.transitionPush(0.4)
            questionLabel.text = allWords.list[questionNumber].germanWord
        }
    }
    
}

extension UIView {
    func transitionReveal(_ duration:CFTimeInterval) {
        let animation = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name:
            CAMediaTimingFunctionName.easeInEaseOut)
        animation.type = CATransitionType.reveal
        animation.duration = duration
        layer.add(animation, forKey: CATransitionType.reveal.rawValue)
        // How do I make the word that is leaving the screen a different UIcolor ?
    }
    func transitionPush(_ duration:CFTimeInterval) {
        let animation = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name:
            CAMediaTimingFunctionName.easeInEaseOut)
        animation.type = CATransitionType.push
        animation.duration = duration
        layer.add(animation, forKey: CATransitionType.push.rawValue)
    }
    
    func transitionMoveIn(_ duration:CFTimeInterval) {
        let animation = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name:
            CAMediaTimingFunctionName.easeInEaseOut)
        animation.type = CATransitionType.moveIn
        animation.duration = duration
        layer.add(animation, forKey: CATransitionType.moveIn.rawValue)
    }
}

