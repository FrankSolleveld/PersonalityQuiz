//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Frank Solleveld on 28/10/2019.
//  Copyright © 2019 Frank Solleveld. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var singleButton1: UIButton!
    @IBOutlet var singleButton2: UIButton!
    @IBOutlet var singleButton3: UIButton!
    @IBOutlet var singleButton4: UIButton!
    
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var multiLabel1: UILabel!
    @IBOutlet var multiLabel2: UILabel!
    @IBOutlet var multiLabel3: UILabel!
    @IBOutlet var multiLabel4: UILabel!
    
    @IBOutlet var rangedStackView: UIStackView!
    @IBOutlet var rangedLabel1: UILabel!
    @IBOutlet var rangedLabel2: UILabel!
    
    
    var questions: [Question] = [
        Question(text: "Which food do you like the most?", type: .single, answers: [
            Answer(text: "Pasta Vegan", type: .iphone),
            Answer(text: "Bolognese", type: .imac),
            Answer(text: "Pasta Pollo with Pesto", type: .macbook),
            Answer(text: "Ceasar Salad", type: .watch)
        ]),
        Question(text: "Which activities do you enjoy the most?", type: .multiple, answers: [
            Answer(text: "Swimming", type: .watch),
            Answer(text: "Fitness", type: .iphone),
            Answer(text: "Sleeping", type: .imac),
            Answer(text: "Eating", type: .macbook)
        ]),
        Question(text: "How much do you like driving on the freeway?", type: .ranged, answers: [
            Answer(text: "I despise driving at all.", type: .watch),
            Answer(text: "Don't prefer to drive myself but won't complain if I need to drive.", type: .imac),
            Answer(text: "I like driving but not for too long.", type: .macbook),
            Answer(text: "I love driving, prefer to be on the road at all times.", type: .iphone)
        ])
    ]
    
    var questionIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        
        let currentQuestion = questions[questionIndex]
        
        switch currentQuestion.type {
        case .single:
            singleStackView.isHidden = false
        case .multiple:
            multipleStackView.isHidden = false
        case .ranged:
            rangedStackView.isHidden = false
        }
    }
    

}
