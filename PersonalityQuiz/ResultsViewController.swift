//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Frank Solleveld on 28/10/2019.
//  Copyright © 2019 Frank Solleveld. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var responses: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
    }

    func calculatePersonalityResult() {
        var frequencyOfAnswers: [DeviceType: Int] = [:]
        let responseTypes = responses.map { $0.type }
        
        for response in responses {
            let newCount: Int
            if let oldCount = frequencyOfAnswers[response] {
                newCount = oldCount + 1
            } else {
                newCount = 1
            }
            frequencyOfAnswers[response] = newCount
        
            let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        }
    }
}
