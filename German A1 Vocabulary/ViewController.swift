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
    
    var pickedAnswer : String = ""
    var questionNumber : Int = 0
    var score : Int = 0 

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var buttonOptions: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonOptions.layer.cornerRadius = 15
        
    }


    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            pickedAnswer = "Der"
            sender.pulsate()
        } else if sender.tag == 2 {
            pickedAnswer = "Die"
            sender.shake()
        } else if sender.tag == 3 {
            pickedAnswer = "Das"
            sender.flash()
        }
        print(pickedAnswer)
    }
    
    
    
    
}

